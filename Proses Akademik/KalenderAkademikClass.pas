Class Kalender_Akademik

	index()
		try
			select all data from table Kalender_Akademik
			show to view
		catch
			get exception

	create()
		try
			select all data from table Kalender_Akademik
			show view add data
		catch
			get exception

	store()
		try
			get ID_Kegiatan
			get Nama_Kegiatan
			get Tanggal
			get Keterangan

			if ID_Kegiatan are exists
				show alert "Data dengan ID_Kegiatan sama tidak boleh"
			else
				save record to table Kalender_Akademik
				index() with alert "Data berhasil disimpan"
		catch
			get exception

	edit(id)
		try
			get id
			check ID_Kegiatan from table Kalender_Akademik
			if data found
				show to view
			else
				show alert "Data tidak ditemukan"
		catch
			get exception

	update(id)
		try
			get ID_Kegiatan
			get Nama_Kegiatan
			get Tanggal
			get Keterangan
			if ID_Kegiatan are same with another data from table Kalender_Akademik
				show alert "Ditemukan data dengan ID_Kegiatan yang sama"
			else
				update record to database
				index()  with alert "Data berhasil diubah"
		catch
			get exception

	delete(id)
		try
			get id
			check ID_Kegiatan from table Kalender_Akademik
			if data found
				delete data from table Kalender_Akademik
				index() with alert "Data berhasil dihapus"
			else
				show alert "Data tidak ditemukan"
		catch
			get exception