Class Jabatan

	index()
		try
			select all data from table jabatan
			show to view
		catch
			get exception

	create()
		try
			show view add data
		catch
			get exception

	store()
		try
			get Kode Jabatan
			get Nama Jabatan
			get Jumlah Pegawai

			if Kode Jabatan are exists
				show alert "Data dengan Kode Jabatan tidak boleh sama"
			else
				save record to table jabatan
				index() with alert "Data berhasil disimpan"
		catch
			get exception

	edit(id)
		try
			get id
			check Kode Jabatan from table jabatan
			if data found
				show to view
			else
				show alert "Data tidak ditemukan"
		catch
			get exception

	update(id)
		try
			get Kode Jabatan
			get Nama Jabatan
			get Jumlah Pegawai

			if Kode Jabatan are same with another data in table jabatan
				show alert "Ditemukan data dengan Kode Jabatan yang sama"
			else
				update record to database with alert
				index() with alert "Data berhasil diubah"
		catch
			get exception

	delete(id)
		try
			get id
			check Kode Jabatan from table jabatan
			if data found
				delete data from table jabatan
				index() with alert "Data berhasil dihapus"
			else
				show alert "Data tidak ditemukan"
		catch
			get exception
