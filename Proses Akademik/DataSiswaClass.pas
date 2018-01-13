Class Data_Siswa

	index()
		try
			select all data from table Data_Siswa join from table Siswa
			show to view
		catch
			get exception

	create()
		try
			select all data from table Data_Siswa
			show view add data
		catch
			get exception

	store()
		try
			get NISN
			get Kelas
			get Nilai

			if NISN are exists
				show alert "Data dengan NISN sama tidak boleh"
			else
				save record to table Data_Siswa
				index() with alert "Data berhasil disimpan"
		catch
			get exception

	edit(id)
		try
			get id
			check NISN from table Data_Siswa
			if data found
				show to view
			else
				show alert "Data tidak ditemukan"
		catch
			get exception

	update(id)
		try
			get NISN
			get Kelas
			get Nilai
			if NISN are same with another data from table Data_Siswa
				show alert "Ditemukan data dengan NISN yang sama"
			else
				update record to database
				index()  with alert "Data berhasil diubah"
		catch
			get exception

	delete(id)
		try
			get id
			check NISN from table Data_Siswa
			if data found
				delete data from table Data_Siswa
				index() with alert "Data berhasil dihapus"
			else
				show alert "Data tidak ditemukan"
		catch
			get exception