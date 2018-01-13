Class TataUsaha

	index()
		try
			select all data from table tatausaha
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
			get NIP
			get Nama
			get Gender
			get Alamat
			get No Telp

			if NIP are exists on table tatausaha
				show alert "Data dengan NIP tidak boleh sama"
			else
				save record to table guru
				index() with alert "Data berhasil disimpan"
		catch
			get exception

	edit(id)
		try
			get id
			check NIP from table tatausaha
			if data found
				show to view
			else
				show alert "Data tidak ditemukan"
		catch
			get exception

	update(id)
		try
			get NIP
			get Nama
			get Gender
			get Alamat
			get No Telp

			if NIP are same with another data on table tatausaha
				show alert "Ditemukan data dengan NIP yang sama"
			else
				update record to table tatausaha
				index() with alert "Data berhasil diubah"
		catch
			get exception

	delete(id)
		try
			get id
			check NIP from table tatausaha
			if data found
				delete data from table tatausaha
				index() with alert "Data berhasil dihapus"
			else
				show alert "Data tidak ditemukan"
		catch
			get exception
