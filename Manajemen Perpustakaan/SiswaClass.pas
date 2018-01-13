Class Siswa

	index()
		try
			select all data from table siswa
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
			get nisn
			get kelas
			get nama
			get alamat
			get notelp

			if nisn are exists on table siswa
				show alert "Data dengan nisn tidak boleh sama"
			else
				save record to table siswa
				index() with alert "Data berhasil disimpan"
		catch
			get exception

	edit(id)
		try
			get id
			check id from table siswa
			if data found
				show to view
			else
				show alert "Data tidak ditemukan"
		catch
			get exception

	update(id)
		try
			get nisn
			get kelas
			get nama
			get alamat
			get notelp

			if nisn are same with another data on table siswa
				show alert "Ditemukan data dengan nisn yang sama"
			else
				update record to table siswa 
				index() with alert "Data berhasil diubah"
		catch
			get exception

	delete(id)
		try
			get id
			check id from table siswa
			if data found
				delete data from table siswa
				index() with alert "Data berhasil dihapus"
			else
				show alert "Data tidak ditemukan"
		catch
			get exception
