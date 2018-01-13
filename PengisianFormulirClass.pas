Class Pengisian_Formulir

	index()
		try
			select all data from table Pengisian_Formulir
			show to view
		catch
			get exception

	create()
		try
			select all data from table Pengisian_Formulir
			show view add data
		catch
			get exception

	store()
		try
			get ID_Formulir
			get NISN
			get Nama
			get Alamat
			get Asal_sekolah


			if ID_Formulir are exists
				show alert "Data dengan ID_Formulir sama tidak boleh"
			else
				save record to table Pengisian_Formulir
				index() with alert "Data berhasil disimpan"
		catch
			get exception

	edit(id)
		try
			get id
			check ID_Formulir from table Pengisian_Formulir
				show to view
			else
				show alert "Data tidak ditemukan"
		catch
			get exception

	update(id)
		try			
			get ID_Formulir
			get NISN
			get Nama
			get Alamat
			get Asal_sekolah
			if ID_Formulir are same with another data from table Pengisian_Formulir
				show alert "Ditemukan data dengan ID_Formulir yang sama"
			else
				update record to database
				index()  with alert "Data berhasil diubah"
		catch
			get exception

	delete(id)
		try
			get id
			check ID_Formulir from table Pengisian_Formulir
			if data found
				delete data from table Pengisian_Formulir
				index() with alert "Data berhasil dihapus"
			else
				show alert "Data tidak ditemukan"
		catch
			get exception