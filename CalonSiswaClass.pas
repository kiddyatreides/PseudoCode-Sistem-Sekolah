Class Calon_Siswa

	index()
		try
			select all data from table Calon_Siswa
			show to view
		catch
			get exception

	create()
		try
			select all data from table Calon_Siswa
			show view add data
		catch
			get exception

	store()
		try
			get NIS
			get Nama
			get Asal_sekolah
			get Alamat
			get Agama
			get Tempat_lahir
			get Nama_ortu


			if NIS are exists
				show alert "Data dengan NIS sama tidak boleh"
			else
				save record to table Calon_Siswa
				index() with alert "Data berhasil disimpan"
		catch
			get exception

	edit(id)
		try
			get id
			check NIS from table Calon_Siswa
			if data found
				show to view
			else
				show alert "Data tidak ditemukan"
		catch
			get exception

	update(id)
		try
			get NIS
			get Nama
			get Asal_sekolah
			get Alamat
			get Agama
			get Tempat_lahir
			get Nama_ortu
			if NIS are same with another data from table Calon_Siswa
				show alert "Ditemukan data dengan NIS yang sama"
			else
				update record to database
				index()  with alert "Data berhasil diubah"
		catch
			get exception

	delete(id)
		try
			get id
			check NIS from table Calon_Siswa
			if data found
				delete data from table Calon_Siswa
				index() with alert "Data berhasil dihapus"
			else
				show alert "Data tidak ditemukan"
		catch
			get exception