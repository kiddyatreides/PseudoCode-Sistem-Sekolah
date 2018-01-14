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

	show(id)
		try
			get id
			check idtransaksi from table transaksipembayaran
			if data found
				show to view
			else
				show alert "Data tidak ditemukan"
		catch
			get exception
