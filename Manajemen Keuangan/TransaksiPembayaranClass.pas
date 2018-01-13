Class TransaksiPembayaran

	index()
		try
			select all data from table transaksipembayaran join from table tatausaha
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
			get nisn
			get idtu
			get idtransaksi
			get semester
			get jumlah
			get tanggal
			get status

			if idtransaksi are exists on table transaksipembayaran
				show alert "Data dengan idtransaksi tidak boleh sama"
			else
				save record to table transaksipembayaran
				index() with alert "Data berhasil disimpan"
		catch
			get exception

	edit(id)
		try
			get id
			check idtransaksi from table transaksipembayaran
			if data found
				show to view
			else
				show alert "Data tidak ditemukan"
		catch
			get exception

	update(id)
		try
			get nisn
			get idtu
			get idtransaksi
			get semester
			get jumlah
			get tanggal
			get status

			if idtransaksi are same with another data on table transaksipembayaran
				show alert "Ditemukan data dengan idtransaksi yang sama"
			else
				update record to table transaksipembayaran 
				index() with alert "Data berhasil diubah"
		catch
			get exception

	delete(id)
		try
			get id
			check idtransaksi from table transaksipembayaran
			if data found
				delete data from table transaksipembayaran
				index() with alert "Data berhasil dihapus"
			else
				show alert "Data tidak ditemukan"
		catch
			get exception
