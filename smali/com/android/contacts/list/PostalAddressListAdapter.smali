.class public Lcom/android/contacts/list/PostalAddressListAdapter;
.super Lcom/android/contacts/list/ContactEntryListAdapter;
.source "PostalAddressListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/PostalAddressListAdapter$PostalQuery;
    }
.end annotation


# instance fields
.field private final mUnknownNameText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;-><init>(Landroid/content/Context;)V

    .line 67
    const v0, 0x104000e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/PostalAddressListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    .line 68
    return-void
.end method

.method protected static buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"

    .prologue
    .line 92
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
    .line 160
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressListAdapter;->getContactNameDisplayOrder()I

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/contacts/list/ContactListItemView;->showDisplayName(Landroid/database/Cursor;II)V

    .line 161
    return-void
.end method

.method protected bindPhoto(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 6
    .parameter "view"
    .parameter "cursor"

    .prologue
    const/4 v1, 0x4

    const/4 v4, 0x0

    .line 164
    const-wide/16 v2, 0x0

    .line 165
    .local v2, photoId:J
    invoke-interface {p2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressListAdapter;->getPhotoLoader()Lcom/android/contacts/ContactPhotoManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;JZZ)V

    .line 170
    return-void
.end method

.method protected bindPostalAddress(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 5
    .parameter "view"
    .parameter "cursor"

    .prologue
    const/4 v4, 0x1

    .line 129
    const/4 v1, 0x0

    .line 130
    .local v1, label:Ljava/lang/CharSequence;
    invoke-interface {p2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 131
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 132
    .local v2, type:I
    const/4 v3, 0x2

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, customLabel:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressListAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v2, v0}, Landroid/provider/ContactsContract$CommonDataKinds$StructuredPostal;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 137
    .end local v0           #customLabel:Ljava/lang/String;
    .end local v2           #type:I
    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/contacts/list/ContactListItemView;->setLabel(Ljava/lang/CharSequence;)V

    .line 138
    const/4 v3, 0x3

    invoke-virtual {p1, p2, v3}, Lcom/android/contacts/list/ContactListItemView;->showData(Landroid/database/Cursor;I)V

    .line 139
    return-void
.end method

.method protected bindSectionHeaderAndDivider(Lcom/android/contacts/list/ContactListItemView;I)V
    .locals 4
    .parameter "view"
    .parameter "position"

    .prologue
    const/4 v3, 0x0

    .line 142
    invoke-virtual {p0, p2}, Lcom/android/contacts/list/PostalAddressListAdapter;->getSectionForPosition(I)I

    move-result v0

    .line 143
    .local v0, section:I
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/PostalAddressListAdapter;->getPositionForSection(I)I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressListAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v2

    aget-object v1, v2, v0

    check-cast v1, Ljava/lang/String;

    .line 145
    .local v1, title:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    .line 152
    .end local v1           #title:Ljava/lang/String;
    :goto_0
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/PostalAddressListAdapter;->getPositionForSection(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v2, p2, :cond_1

    .line 153
    invoke-virtual {p1, v3}, Lcom/android/contacts/list/ContactListItemView;->setDividerVisible(Z)V

    .line 157
    :goto_1
    return-void

    .line 147
    :cond_0
    invoke-virtual {p1, v3}, Lcom/android/contacts/list/ContactListItemView;->setDividerVisible(Z)V

    .line 148
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/android/contacts/list/ContactListItemView;->setDividerVisible(Z)V

    goto :goto_1
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 1
    .parameter "itemView"
    .parameter "partition"
    .parameter "cursor"
    .parameter "position"

    .prologue
    .line 121
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/list/ContactListItemView;

    .line 122
    .local v0, view:Lcom/android/contacts/list/ContactListItemView;
    invoke-virtual {p0, v0, p4}, Lcom/android/contacts/list/PostalAddressListAdapter;->bindSectionHeaderAndDivider(Lcom/android/contacts/list/ContactListItemView;I)V

    .line 123
    invoke-virtual {p0, v0, p3}, Lcom/android/contacts/list/PostalAddressListAdapter;->bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 124
    invoke-virtual {p0, v0, p3}, Lcom/android/contacts/list/PostalAddressListAdapter;->bindPhoto(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 125
    invoke-virtual {p0, v0, p3}, Lcom/android/contacts/list/PostalAddressListAdapter;->bindPostalAddress(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 126
    return-void
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 5
    .parameter "loader"
    .parameter "directoryId"

    .prologue
    const/4 v4, 0x1

    .line 72
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$StructuredPostal;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Lcom/android/contacts/list/PostalAddressListAdapter;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "remove_duplicate_entries"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 76
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressListAdapter;->getContactNameDisplayOrder()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 79
    invoke-static {}, Lcom/android/contacts/list/PostalAddressListAdapter$PostalQuery;->access$000()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 84
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressListAdapter;->getSortOrder()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 85
    const-string v1, "sort_key"

    invoke-virtual {p1, v1}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 89
    :goto_1
    return-void

    .line 81
    :cond_0
    invoke-static {}, Lcom/android/contacts/list/PostalAddressListAdapter$PostalQuery;->access$100()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_1
    const-string v1, "sort_key_alt"

    invoke-virtual {p1, v1}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getContactDisplayName(I)Ljava/lang/String;
    .locals 2
    .parameter "position"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/PostalAddressListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataUri(I)Landroid/net/Uri;
    .locals 4
    .parameter "position"

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/PostalAddressListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 107
    .local v0, id:J
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "context"
    .parameter "partition"
    .parameter "cursor"
    .parameter "position"
    .parameter "parent"

    .prologue
    .line 113
    new-instance v0, Lcom/android/contacts/list/ContactListItemView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/list/ContactListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 114
    .local v0, view:Lcom/android/contacts/list/ContactListItemView;
    iget-object v1, p0, Lcom/android/contacts/list/PostalAddressListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setUnknownNameText(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressListAdapter;->isQuickContactEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setQuickContactEnabled(Z)V

    .line 116
    return-object v0
.end method
