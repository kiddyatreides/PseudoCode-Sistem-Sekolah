Class Penjadwalan_Ujian

	index()
		try
			select all data from table Penjadwalan_Ujian
			show to view
		catch
			get exception

	create()
		try
			select all data from table Penjadwalan_Ujian
			show view add data
		catch
			get exception

	store()
		try
			get ID_JadwalUjian
			get Tanggal
			get Pengawas_ujian
			get Ruang_kelas
			get Jam

			if ID_JadwalUjian are exists
				show alert "Data dengan ID_JadwalUjian sama tidak boleh"
			else
				save record to table Penjadwalan_Ujian
				index() with alert "Data berhasil disimpan"
		catch
			get exception

	edit(id)
		try
			get id
			check ID_JadwalUjian from table Penjadwalan_Ujian
			if data found
				show to view
			else
				show alert "Data tidak ditemukan"
		catch
			get exception

	update(id)
		try
			get ID_JadwalUjian
			get Tanggal
			get Pengawas_ujian
			get Ruang_kelas
			get Jam
			if ID_JadwalUjian are same with another data from table Penjadwalan_Ujian
				show alert "Ditemukan data dengan ID_JadwalUjian yang sama"
			else
				update record to database
				index()  with alert "Data berhasil diubah"
		catch
			get exception

	delete(id)
		try
			get id
			check ID_JadwalUjian from table Penjadwalan_Ujian
			if data found
				delete data from table Penjadwalan_Ujian
				index() with alert "Data berhasil dihapus"
			else
				show alert "Data tidak ditemukan"
		catch
			get exception