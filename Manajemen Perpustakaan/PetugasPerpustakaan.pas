Class PetugasPerpustakaan

	index()
		try
			select all data from table petugasperpustakaan
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
			get idpetugas
			get nama
			get alamat
			get gender
			get tgl_lahir
			get notelp

			if idpetugas are exists on table petugasperpustakaan
				show alert "Data dengan idpetugas tidak boleh sama"
			else
				save record to table petugasperpustakaan
				index() with alert "Data berhasil disimpan"
		catch
			get exception

	edit(id)
		try
			get id
			check id from table petugasperpustakaan
			if data found
				show to view
			else
				show alert "Data tidak ditemukan"
		catch
			get exception

	update(id)
		try
			get idpetugas
			get nama
			get alamat
			get gender
			get tgl_lahir
			get notelp

			if idpetugas are same with another data on table petugasperpustakaan
				show alert "Ditemukan data dengan nisn yang sama"
			else
				update record to table petugasperpustakaan 
				index() with alert "Data berhasil diubah"
		catch
			get exception

	delete(id)
		try
			get id
			check id from table petugasperpustakaan
			if data found
				delete data from table petugasperpustakaan
				index() with alert "Data berhasil dihapus"
			else
				show alert "Data tidak ditemukan"
		catch
			get exception
