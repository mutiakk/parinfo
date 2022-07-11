class ObjectTiket {
  int id;
  String fname;
  double star;
  double fhtm;
  String place;
  String imageUrls;
  String fdesc;

  ObjectTiket(
      {required this.id,
      required this.fname,
      required this.star,
      required this.fhtm,
      required this.place,
      required this.imageUrls,
      required this.fdesc});
}

List<ObjectTiket> listDestinasi = [
  ObjectTiket(
      id: 1,
      fname: 'Dufan',
      star: 4.5,
      fhtm: 250000,
      place: "Jakarta",
      imageUrls:
          'https://cdn06.pramborsfm.com/storage/app/media/DUFAN%20-20200712115626.jpg?tr=w-800',
      fdesc:
          "Dufan atau disebut juga Dunia Fantasi adalah theme park yang terletak di kawasan Taman Impian Jaya Ancol, Jakarta Utara, Indonesia yang diresmikan dan dibuka untuk umum pada tanggal 29 Agustus 1985"),
  ObjectTiket(
    id: 2,
    fname: 'Jakarta Aquarium',
    star: 4.5,
    fhtm: 150000,
    place: "Jakarta",
    imageUrls:
        "https://s-light.tiket.photos/t/01E25EBZS3W0FY9GTG6C42E1SE/rsfit19201280gsm/events/2021/12/08/d408eb52-5459-41b7-b136-455bf66b4874-1638949824913-fb6a74fe056f99f3d4c0ecd9cb50a2e4.jpg",
    fdesc:
        "Mengunjungi Jakarta Aquarium adalah salah satu hal yang paling menghibur untuk dilakukan saat berada di ibu kota Indonesia. Akuarium Jakarta, yang tidak boleh disamakan dengan akuarium lain di daerah ini, adalah salah satu tempat wisata terbaru dan terpopuler di kota ini. Terletak di Neo Soho Mall yang hanya berjarak 4 kilometer sebelah barat Monas yang merupakan simbol nasional Indonesia.",
  ),
  ObjectTiket(
    id: 3,
    fname: 'Kebun Raya Bogor',
    star: 4.5,
    fhtm: 20000,
    place: "Bogor",
    imageUrls:
        'https://asset.kompas.com/crops/XBb7rvITwAvPEIB6aoZW--dIyb0=/0x0:0x0/750x500/data/photo/2020/03/20/5e743cf3c7a10.jpg',
    fdesc:
        "Kebun Raya Bogor atau Kebun Botani Bogor adalah sebuah kebun botani besar yang terletak di Kota Bogor, Indonesia. Luasnya mencapai 87 hektar dan memiliki 15.000 jenis koleksi pohon dan tumbuhan. Saat ini Kebun Raya Bogor ramai dikunjungi sebagai tempat wisata, terutama hari Sabtu dan Minggu. Tiket masuknya Rp 30.000. ",
  ),
  ObjectTiket(
    id: 4,
    fname: 'Curug Bidadari',
    star: 4.5,
    fhtm: 25000,
    place: "Bogor",
    imageUrls:
        'https://asset.kompas.com/crops/3HIEB9r3v9C55EW5nN4oQtGufCA=/0x429:1080x1149/750x500/data/photo/2022/02/20/6211c0000290e.jpeg',
    fdesc:
        "Keunikan Curug Cilember adalah memiliki tujuh titik air terjun. Mengutip situs Pemerintah Kabupaten Bogor, Curug Cilember mempunyai satu sumber mata air kemudian terbagi mengaliri tujuh titik air terjun.",
  ),
  ObjectTiket(
    id: 5,
    fname: 'Jatim Park 2',
    star: 4.5,
    fhtm: 90000,
    place: "Malang",
    imageUrls:"https://ik.imagekit.io/tvlk/blog/2020/01/Jatim-Park-2.jpg?tr=dpr-1.5,w-675",
    fdesc:
      "Batu Secret Zoo merupakan salah satu kebun binatang terbesar di Indonesia menjadi daya tarik utama dari Jatim Park 2. Kebun binatang ini didesain modern dengan berbagai koleksi satwa yang terbagi dalam beberapa zona. Menariknya, kamu pun dapat melihat semua koleksinya dari jarak dekat."
   ),
];
