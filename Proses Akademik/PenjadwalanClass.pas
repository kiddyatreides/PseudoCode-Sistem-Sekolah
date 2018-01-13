Class Penjadwalan

	index()
		try
			select all data from table Penjadwalan
			show to view
		catch
			get exception

	create()
		try
			select all data from table Penjadwalan
			show view add data
		catch
			get exception

	store()
		try
			get ID_Pelajaran
			get Mata_pelajaran
			get Jam
			get Tanggal
			get Guru_pengawas
			get Kelas

			if ID_Pelajaran are exists
				show alert "Data dengan ID_Pelajaran sama tidak boleh"
			else
				save record to table Penjadwalan
				index() with alert "Data berhasil disimpan"
		catch
			get exception

	edit(id)
		try
			get id
			check ID_Pelajaran from table Penjadwalan
			if data found
				show to view
			else
				show alert "Data tidak ditemukan"
		catch
			get exception

	update(id)
		try
			get ID_Pelajaran
			get Mata_pelajaran
			get Jam
			get Tanggal
			get Guru_pengawas
			get Kelas
			if ID_Pelajaran are same with another data from table Penjadwalan
				show alert "Ditemukan data dengan ID_Pelajaran yang sama"
			else
				update record to database
				index()  with alert "Data berhasil diubah"
		catch
			get exception

	delete(id)
		try
			get id
			check ID_Pelajaran from table Penjadwalan
			if data found
				delete data from table Penjadwalan
				index() with alert "Data berhasil dihapus"
			else
				show alert "Data tidak ditemukan"
		catch
			get exception