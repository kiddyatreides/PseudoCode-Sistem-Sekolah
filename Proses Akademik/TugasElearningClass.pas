Class Tugas_Elearning

	index()
		try
			select all data from table Tugas_Elearning
			show to view
		catch
			get exception

	create()
		try
			select all data from table Tugas_Elearning
			show view add data
		catch
			get exception

	store()
		try
			get ID_Elearning
			get Tanggal_upload
			get Tanggal_deadline

			if ID_Elearning are exists
				show alert "Data dengan ID_Elearning sama tidak boleh"
			else
				save record to table Tugas_Elearning
				index() with alert "Data berhasil disimpan"
		catch
			get exception

	edit(id)
		try
			get id
			check ID_Elearning from table Tugas_Elearning
			if data found
				show to view
			else
				show alert "Data tidak ditemukan"
		catch
			get exception

	update(id)
		try
			get ID_Elearning
			get Tanggal_upload
			get Tanggal_deadline
			if ID_Elearning are same with another data from table Tugas_Elearning
				show alert "Ditemukan data dengan ID_Elearning yang sama"
			else
				update record to database
				index()  with alert "Data berhasil diubah"
		catch
			get exception

	delete(id)
		try
			get id
			check ID_Elearning from table Tugas_Elearning
			if data found
				delete data from table Tugas_Elearning
				index() with alert "Data berhasil dihapus"
			else
				show alert "Data tidak ditemukan"
		catch
			get exception