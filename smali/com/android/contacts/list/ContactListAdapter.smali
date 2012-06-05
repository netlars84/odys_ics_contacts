.class public abstract Lcom/android/contacts/list/ContactListAdapter;
.super Lcom/android/contacts/list/ContactEntryListAdapter;
.source "ContactListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/ContactListAdapter$ContactQuery;
    }
.end annotation


# instance fields
.field private mSelectedContactDirectoryId:J

.field private mSelectedContactId:J

.field private mSelectedContactLookupKey:Ljava/lang/String;

.field private mUnknownNameText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;-><init>(Landroid/content/Context;)V

    .line 108
    const v0, 0x7f0b00f5

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    .line 109
    return-void
.end method

.method protected static buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"

    .prologue
    .line 134
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "address_book_index_extras"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 2
    .parameter "view"
    .parameter "cursor"

    .prologue
    .line 238
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->getContactNameDisplayOrder()I

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/contacts/list/ContactListItemView;->showDisplayName(Landroid/database/Cursor;II)V

    .line 241
    return-void
.end method

.method protected bindPhoto(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V
    .locals 8
    .parameter "view"
    .parameter "partitionIndex"
    .parameter "cursor"

    .prologue
    const/4 v1, 0x4

    const/4 v4, 0x0

    .line 217
    invoke-virtual {p0, p2}, Lcom/android/contacts/list/ContactListAdapter;->isPhotoSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->removePhotoView()V

    .line 235
    :goto_0
    return-void

    .line 223
    :cond_0
    const-wide/16 v2, 0x0

    .line 224
    .local v2, photoId:J
    invoke-interface {p3, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 225
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 228
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_2

    .line 229
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->getPhotoLoader()Lcom/android/contacts/ContactPhotoManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;JZZ)V

    goto :goto_0

    .line 231
    :cond_2
    const/4 v0, 0x5

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 232
    .local v7, photoUriString:Ljava/lang/String;
    if-nez v7, :cond_3

    const/4 v6, 0x0

    .line 233
    .local v6, photoUri:Landroid/net/Uri;
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->getPhotoLoader()Lcom/android/contacts/ContactPhotoManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v4, v4}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;ZZ)V

    goto :goto_0

    .line 232
    .end local v6           #photoUri:Landroid/net/Uri;
    :cond_3
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    goto :goto_1
.end method

.method protected bindPresenceAndStatusMessage(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 2
    .parameter "view"
    .parameter "cursor"

    .prologue
    .line 244
    const/4 v0, 0x2

    const/4 v1, 0x3

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/contacts/list/ContactListItemView;->showPresenceAndStatusMessage(Landroid/database/Cursor;II)V

    .line 246
    return-void
.end method

.method protected bindSearchSnippet(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 1
    .parameter "view"
    .parameter "cursor"

    .prologue
    .line 249
    const/16 v0, 0x8

    invoke-virtual {p1, p2, v0}, Lcom/android/contacts/list/ContactListItemView;->showSnippet(Landroid/database/Cursor;I)V

    .line 250
    return-void
.end method

.method protected bindSectionHeaderAndDivider(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V
    .locals 4
    .parameter "view"
    .parameter "position"
    .parameter "cursor"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 198
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 199
    invoke-virtual {p0, p2}, Lcom/android/contacts/list/ContactListAdapter;->getItemPlacementInSection(I)Lcom/android/contacts/widget/IndexerListAdapter$Placement;

    move-result-object v0

    .line 202
    .local v0, placement:Lcom/android/contacts/widget/IndexerListAdapter$Placement;
    if-nez p2, :cond_0

    const/4 v2, 0x7

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->getContactsCount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/contacts/list/ContactListItemView;->setCountView(Ljava/lang/CharSequence;)V

    .line 207
    :goto_0
    iget-object v2, v0, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->sectionHeader:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    .line 208
    iget-boolean v2, v0, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->lastInSection:Z

    if-nez v2, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Lcom/android/contacts/list/ContactListItemView;->setDividerVisible(Z)V

    .line 214
    .end local v0           #placement:Lcom/android/contacts/widget/IndexerListAdapter$Placement;
    :goto_2
    return-void

    .line 205
    .restart local v0       #placement:Lcom/android/contacts/widget/IndexerListAdapter$Placement;
    :cond_0
    invoke-virtual {p1, v3}, Lcom/android/contacts/list/ContactListItemView;->setCountView(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 208
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 210
    .end local v0           #placement:Lcom/android/contacts/widget/IndexerListAdapter$Placement;
    :cond_2
    invoke-virtual {p1, v3}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p1, v1}, Lcom/android/contacts/list/ContactListItemView;->setDividerVisible(Z)V

    .line 212
    invoke-virtual {p1, v3}, Lcom/android/contacts/list/ContactListItemView;->setCountView(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public changeCursor(ILandroid/database/Cursor;)V
    .locals 2
    .parameter "partitionIndex"
    .parameter "cursor"

    .prologue
    const/4 v0, 0x1

    .line 335
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 338
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 339
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 340
    const/4 v1, 0x7

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v0, :cond_1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListAdapter;->setProfileExists(Z)V

    .line 342
    :cond_0
    return-void

    .line 340
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContactDisplayName(I)Ljava/lang/String;
    .locals 2
    .parameter "position"

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContactUri(I)Landroid/net/Uri;
    .locals 3
    .parameter "position"

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;->getPartitionForPosition(I)I

    move-result v1

    .line 149
    .local v1, partitionIndex:I
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 150
    .local v0, item:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/list/ContactListAdapter;->getContactUri(ILandroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getContactUri(ILandroid/database/Cursor;)Landroid/net/Uri;
    .locals 9
    .parameter "partitionIndex"
    .parameter "cursor"

    .prologue
    .line 154
    const/4 v6, 0x0

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 155
    .local v0, contactId:J
    const/4 v6, 0x6

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 156
    .local v4, lookupKey:Ljava/lang/String;
    invoke-static {v0, v1, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 157
    .local v5, uri:Landroid/net/Uri;
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/list/DirectoryPartition;

    invoke-virtual {v6}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v2

    .line 158
    .local v2, directoryId:J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_0

    .line 159
    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "directory"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 162
    :cond_0
    return-object v5
.end method

.method public getFirstContactUri()Landroid/net/Uri;
    .locals 5

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->getPartitionCount()I

    move-result v3

    .line 312
    .local v3, partitionCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 313
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/list/DirectoryPartition;

    .line 314
    .local v2, partition:Lcom/android/contacts/list/DirectoryPartition;
    invoke-virtual {v2}, Lcom/android/contacts/list/DirectoryPartition;->isLoading()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 312
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 318
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactListAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v0

    .line 319
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 323
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 327
    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/list/ContactListAdapter;->getContactUri(ILandroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v4

    .line 330
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v2           #partition:Lcom/android/contacts/list/DirectoryPartition;
    :goto_1
    return-object v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method protected final getProjection(Z)[Ljava/lang/String;
    .locals 2
    .parameter "forSearch"

    .prologue
    const/4 v1, 0x1

    .line 348
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->getContactNameDisplayOrder()I

    move-result v0

    .line 349
    .local v0, sortOrder:I
    if-eqz p1, :cond_1

    .line 350
    if-ne v0, v1, :cond_0

    .line 351
    invoke-static {}, Lcom/android/contacts/list/ContactListAdapter$ContactQuery;->access$000()[Ljava/lang/String;

    move-result-object v1

    .line 359
    :goto_0
    return-object v1

    .line 353
    :cond_0
    invoke-static {}, Lcom/android/contacts/list/ContactListAdapter$ContactQuery;->access$100()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 356
    :cond_1
    if-ne v0, v1, :cond_2

    .line 357
    invoke-static {}, Lcom/android/contacts/list/ContactListAdapter$ContactQuery;->access$200()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 359
    :cond_2
    invoke-static {}, Lcom/android/contacts/list/ContactListAdapter$ContactQuery;->access$300()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSelectedContactDirectoryId()J
    .locals 2

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactDirectoryId:J

    return-wide v0
.end method

.method public getSelectedContactId()J
    .locals 2

    .prologue
    .line 124
    iget-wide v0, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactId:J

    return-wide v0
.end method

.method public getSelectedContactLookupKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactLookupKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedContactPosition()I
    .locals 14

    .prologue
    .line 253
    iget-object v10, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactLookupKey:Ljava/lang/String;

    if-nez v10, :cond_1

    iget-wide v10, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactId:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_1

    .line 254
    const/4 v9, -0x1

    .line 303
    :cond_0
    :goto_0
    return v9

    .line 257
    :cond_1
    const/4 v2, 0x0

    .line 258
    .local v2, cursor:Landroid/database/Cursor;
    const/4 v8, -0x1

    .line 259
    .local v8, partitionIndex:I
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->getPartitionCount()I

    move-result v7

    .line 260
    .local v7, partitionCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v7, :cond_2

    .line 261
    invoke-virtual {p0, v3}, Lcom/android/contacts/list/ContactListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/list/DirectoryPartition;

    .line 262
    .local v6, partition:Lcom/android/contacts/list/DirectoryPartition;
    invoke-virtual {v6}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactDirectoryId:J

    cmp-long v10, v10, v12

    if-nez v10, :cond_3

    .line 263
    move v8, v3

    .line 267
    .end local v6           #partition:Lcom/android/contacts/list/DirectoryPartition;
    :cond_2
    const/4 v10, -0x1

    if-ne v8, v10, :cond_4

    .line 268
    const/4 v9, -0x1

    goto :goto_0

    .line 260
    .restart local v6       #partition:Lcom/android/contacts/list/DirectoryPartition;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 271
    .end local v6           #partition:Lcom/android/contacts/list/DirectoryPartition;
    :cond_4
    invoke-virtual {p0, v8}, Lcom/android/contacts/list/ContactListAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v2

    .line 272
    if-nez v2, :cond_5

    .line 273
    const/4 v9, -0x1

    goto :goto_0

    .line 276
    :cond_5
    const/4 v10, -0x1

    invoke-interface {v2, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 277
    const/4 v5, -0x1

    .line 278
    .local v5, offset:I
    :cond_6
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 279
    iget-object v10, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactLookupKey:Ljava/lang/String;

    if-eqz v10, :cond_8

    .line 280
    const/4 v10, 0x6

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 281
    .local v4, lookupKey:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactLookupKey:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 282
    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    .line 295
    .end local v4           #lookupKey:Ljava/lang/String;
    :cond_7
    :goto_2
    const/4 v10, -0x1

    if-ne v5, v10, :cond_a

    .line 296
    const/4 v9, -0x1

    goto :goto_0

    .line 286
    :cond_8
    iget-wide v10, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactId:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_6

    iget-wide v10, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactDirectoryId:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_9

    iget-wide v10, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactDirectoryId:J

    const-wide/16 v12, 0x1

    cmp-long v10, v10, v12

    if-nez v10, :cond_6

    .line 288
    :cond_9
    const/4 v10, 0x0

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 289
    .local v0, contactId:J
    iget-wide v10, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactId:J

    cmp-long v10, v0, v10

    if-nez v10, :cond_6

    .line 290
    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    .line 291
    goto :goto_2

    .line 299
    .end local v0           #contactId:J
    :cond_a
    invoke-virtual {p0, v8}, Lcom/android/contacts/list/ContactListAdapter;->getPositionForPartition(I)I

    move-result v10

    add-int v9, v10, v5

    .line 300
    .local v9, position:I
    invoke-virtual {p0, v8}, Lcom/android/contacts/list/ContactListAdapter;->hasHeader(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 301
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0
.end method

.method public getUnknownNameText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/contacts/list/ContactListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasValidSelection()Z
    .locals 2

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->getSelectedContactPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelectedContact(ILandroid/database/Cursor;)Z
    .locals 10
    .parameter "partitionIndex"
    .parameter "cursor"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 172
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/list/DirectoryPartition;

    invoke-virtual {v3}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v0

    .line 173
    .local v0, directoryId:J
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->getSelectedContactDirectoryId()J

    move-result-wide v6

    cmp-long v3, v6, v0

    if-eqz v3, :cond_0

    .line 182
    :goto_0
    return v5

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->getSelectedContactLookupKey()Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, lookupKey:Ljava/lang/String;
    if-eqz v2, :cond_1

    const/4 v3, 0x6

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v5, v4

    .line 179
    goto :goto_0

    .line 182
    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v3, v0, v6

    if-eqz v3, :cond_2

    const-wide/16 v6, 0x1

    cmp-long v3, v0, v6

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->getSelectedContactId()J

    move-result-wide v6

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-nez v3, :cond_2

    move v3, v4

    :goto_1
    move v5, v3

    goto :goto_0

    :cond_2
    move v3, v5

    goto :goto_1
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "context"
    .parameter "partition"
    .parameter "cursor"
    .parameter "position"
    .parameter "parent"

    .prologue
    .line 189
    new-instance v0, Lcom/android/contacts/list/ContactListItemView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/list/ContactListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 190
    .local v0, view:Lcom/android/contacts/list/ContactListItemView;
    iget-object v1, p0, Lcom/android/contacts/list/ContactListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setUnknownNameText(Ljava/lang/CharSequence;)V

    .line 191
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->isQuickContactEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setQuickContactEnabled(Z)V

    .line 192
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->isSelectionVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setActivatedStateSupported(Z)V

    .line 193
    return-object v0
.end method

.method public setSelectedContact(JLjava/lang/String;J)V
    .locals 0
    .parameter "selectedDirectoryId"
    .parameter "lookupKey"
    .parameter "contactId"

    .prologue
    .line 128
    iput-wide p1, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactDirectoryId:J

    .line 129
    iput-object p3, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactLookupKey:Ljava/lang/String;

    .line 130
    iput-wide p4, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactId:J

    .line 131
    return-void
.end method
