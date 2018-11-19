/*
 * Copyright (C) 2017, David PHAM-VAN <dev.nfet.net@gmail.com>
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

part of pdf;

class PDFInfo extends PDFObject {
  String author;
  String creator;
  String title;
  String subject;
  String keywords;
  String producer;

  /// @param title Title of this document
  PDFInfo(
    PDFDocument pdfDocument, {
    this.title,
    this.author,
    this.creator,
    this.subject,
    this.keywords,
    this.producer,
  }) : super(pdfDocument, null);

  /// @param os OutputStream to send the object to
  @override
  void prepare() {
    super.prepare();

    if (author != null) params["/Author"] = PDFStream.text(author);
    if (creator != null) params["/Creator"] = PDFStream.text(creator);
    if (title != null) params["/Title"] = PDFStream.text(title);
    if (subject != null) params["/Subject"] = PDFStream.text(subject);
    if (keywords != null) params["/Keywords"] = PDFStream.text(keywords);
    if (producer != null) params["/Producer"] = PDFStream.text(producer);
  }
}
