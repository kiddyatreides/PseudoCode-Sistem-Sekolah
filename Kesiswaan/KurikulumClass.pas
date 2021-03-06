Class Kurikulum

	index()
		try
			select all data from table Kurikulum
			show to view
		catch
			get exception

	create()
		try
			select all data from table Kurikulum
			show view add data
		catch
			get exception

	store()
		try
			get ID_Pelajaran
			get Jumlah_jam
			get Kelas

			if ID_Pelajaran are exists
				show alert "Data dengan ID_Pelajaran sama tidak boleh"
			else
				save record to table Kurikulum
				index() with alert "Data berhasil disimpan"
		catch
			get exception

	edit(id)
		try
			get id
			check ID_Pelajaran from table Kurikulum
			if data found
				show to view
			else
				show alert "Data tidak ditemukan"
		catch
			get exception

	update(id)
		try
			get ID_Pelajaran
			get Jumlah_jam
			get Kelas
			if ID_Pelajaran are same with another data from table Kurikulum
				show alert "Ditemukan data dengan ID_Pelajaran yang sama"
			else
				update record to database
				index()  with alert "Data berhasil diubah"
		catch
			get exception

	delete(id)
		try
			get id
			check ID_Pelajaran from table Kurikulum
			if data found
				delete data from table Kurikulum
				index() with alert "Data berhasil dihapus"
			else
				show alert "Data tidak ditemukan"
		catch
			get exception