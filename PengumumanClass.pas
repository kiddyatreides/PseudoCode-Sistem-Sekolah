Class Pengumuman

	index()
		try
			select all data from table Pengumuman
			show to view
		catch
			get exception

	create()
		try
			select all data from table Pengumuman
			show view add data
		catch
			get exception

	store()
		try
			get ID_Pengumuman
			get Nama
			get Stat
			get Kelas


			if ID_Pengumuman are exists
				show alert "Data dengan ID_Pengumuman sama tidak boleh"
			else
				save record to table Pengumuman
				index() with alert "Data berhasil disimpan"
		catch
			get exception

	edit(id)
		try
			get id
			check ID_Pengumuman from table Pengumuman
			if data found
				show to view
			else
				show alert "Data tidak ditemukan"
		catch
			get exception

	update(id)
		try			
			get ID_Pengumuman
			get Nama
			get Stat
			get Kelas
			if ID_Pengumuman are same with another data from table Pengumuman
				show alert "Ditemukan data dengan ID_Pengumuman yang sama"
			else
				update record to database
				index()  with alert "Data berhasil diubah"
		catch
			get exception

	delete(id)
		try
			get id
			check ID_Pengumuman from table Pengumuman
			if data found
				delete data from table Pengumuman
				index() with alert "Data berhasil dihapus"
			else
				show alert "Data tidak ditemukan"
		catch
			get exception