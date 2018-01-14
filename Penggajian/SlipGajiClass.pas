Class SlipGaji

	index()
		try
			select all data from table slipgaji
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
			get No Slip
			get tanggal
			get jumlah
			get penerima
			get pencetak
			get keterangan

			if no slip are exists on table slipgaji
				show alert "Data dengan no slip tidak boleh sama"
			else
				save record to table slipgaji
				index() with alert "Data berhasil disimpan"
		catch
			get exception
