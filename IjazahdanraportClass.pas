Class Ijazahdanraport

	index()
		try
			select all data from table Ijazahdanraport join from table Calon_Siswa
			show to view
		catch
			get exception

	create()
		try
			select all data from table Ijazahdanraport
			show view add data
		catch
			get exception

	store()
		try
			get No_ijazah
			get Sekolah


			if No_ijazah are exists
				show alert "Data dengan No_ijazah sama tidak boleh"
			else
				save record to table Ijazahdanraport
				index() with alert "Data berhasil disimpan"
		catch
			get exception

	edit(id)
		try
			get id
			check No_ijazah from table Ijazahdanraport
			if data found
				show to view
			else
				show alert "Data tidak ditemukan"
		catch
			get exception

	update(id)
		try			
			get No_ijazah
			get Sekolah
			if No_ijazah are same with another data from table Ijazahdanraport
				show alert "Ditemukan data dengan No_ijazah yang sama"
			else
				update record to database
				index()  with alert "Data berhasil diubah"
		catch
			get exception

	delete(id)
		try
			get id
			check No_ijazah from table Ijazahdanraport
			if data found
				delete data from table Ijazahdanraport
				index() with alert "Data berhasil dihapus"
			else
				show alert "Data tidak ditemukan"
		catch
			get exception