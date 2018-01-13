Class PinjamanBuku

	index()
		try
			select all data from table pinjamanbuku
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
			get idpinjaman
			get idpetugas
			get idbuku
			get tanggalpinjam
			get lamapinjam

			if idpinjaman are exists on table pinjamanbuku
				show alert "Data dengan idpinjaman tidak boleh sama"
			else
				save record to table pinjamanbuku
				index() with alert "Data berhasil disimpan"
		catch
			get exception

	edit(id)
		try
			get id
			check idpinjaman from table pinjamanbuku
			if data found
				show to view
			else
				show alert "Data tidak ditemukan"
		catch
			get exception

	update(id)
		try
			get idpinjaman
			get idpetugas
			get idbuku
			get tanggalpinjam
			get lamapinjam

			if idpinjaman are same with another data on table pinjamanbuku
				show alert "Ditemukan data dengan nisn yang sama"
			else
				update record to table pinjamanbuku 
				index() with alert "Data berhasil diubah"
		catch
			get exception

	delete(id)
		try
			get id
			check idpinjaman from table pinjamanbuku
			if data found
				delete data from table pinjamanbuku
				index() with alert "Data berhasil dihapus"
			else
				show alert "Data tidak ditemukan"
		catch
			get exception
