Class PengembalianBuku

	index()
		try
			select all data from table pengembalianbuku
			show to view
		catch
			get exception

	create()
		try
			show view add data
		catch
			get exception

	store()
		try
			get idpengembalian
			get idpetugas
			get idbuku
			get tanggalpinjam
			get denda

			if idpengembalian are exists on table pengembalianbuku
				show alert "Data dengan idpengembalian tidak boleh sama"
			else
				save record to table pengembalianbuku
				index() with alert "Data berhasil disimpan"
		catch
			get exception

	edit(id)
		try
			get id
			check idpinjaman from table pengembalianbuku
			if data found
				show to view
			else
				show alert "Data tidak ditemukan"
		catch
			get exception

	update(id)
		try
			get idpengembalian
			get idpetugas
			get idbuku
			get tanggalpinjam
			get denda

			if idpinjaman are same with another data on table pengembalianbuku
				show alert "Ditemukan data dengan nisn yang sama"
			else
				update record to table pengembalianbuku 
				index() with alert "Data berhasil diubah"
		catch
			get exception