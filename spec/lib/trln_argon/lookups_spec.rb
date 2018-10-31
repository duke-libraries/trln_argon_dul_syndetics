describe TrlnArgon::Lookups do
  let(:lookups) { described_class.new(file_fixture('mappings')) }

  it 'loads all the files' do
    expect(lookups.mappings.size).to eq(2)
  end

  it 'returns path spec as default when not found' do
    pathspec = 'loopy.loc_b.notfound'
    expect(lookups.lookup(pathspec)).to eq(pathspec)
  end

  it 'returns an empty string when code is mapped to an empty string' do
    pathspec = 'test2.loc_n.loc3'
    expect(lookups.lookup(pathspec)).to eq('')
  end

  it 'correctly masks faceted locations' do
    lib1_facet = lookups.lookup('test1.facet.lib1')
    expect(lib1_facet).to eq('Facet lib1')
  end

  it 'correctly falls back when no facet value mapped' do
    lib2_facet = lookups.lookup('test2.facet.lib2')
    expect(lib2_facet).to eq(lookups.lookup('test2.loc_b.lib2'))
  end

  context '#mappings' do
    it 'can be safely marshaled' do
      expect(Marshal.dump(lookups.mappings)).not_to be_nil
    end
  end
end
