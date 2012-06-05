.class public Lcom/android/contacts/editor/RawContactEditorView;
.super Lcom/android/contacts/editor/BaseRawContactEditorView;
.source "RawContactEditorView.java"


# instance fields
.field private mAccountIcon:Landroid/widget/ImageView;

.field private mAccountNameTextView:Landroid/widget/TextView;

.field private mAccountTypeTextView:Landroid/widget/TextView;

.field private mAddFieldButton:Landroid/widget/Button;

.field private mAutoAddToDefaultGroup:Z

.field private mFields:Landroid/view/ViewGroup;

.field private mGroupMembershipKind:Lcom/android/contacts/model/DataKind;

.field private mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

.field private mGroupMetaData:Landroid/database/Cursor;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mName:Lcom/android/contacts/editor/StructuredNameEditorView;

.field private mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

.field private mPhoneticNameAdded:Z

.field private mRawContactId:J

.field private mState:Lcom/android/contacts/model/EntityDelta;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/BaseRawContactEditorView;-><init>(Landroid/content/Context;)V

    .line 79
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRawContactId:J

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAutoAddToDefaultGroup:Z

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/editor/BaseRawContactEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRawContactId:J

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAutoAddToDefaultGroup:Z

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/editor/RawContactEditorView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/contacts/editor/RawContactEditorView;->showAddInformationPopupWindow()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/contacts/editor/RawContactEditorView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticNameAdded:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/contacts/editor/RawContactEditorView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/contacts/editor/RawContactEditorView;->updatePhoneticNameVisibility()V

    return-void
.end method

.method private addToDefaultGroupIfNeeded()V
    .locals 12

    .prologue
    .line 333
    iget-boolean v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAutoAddToDefaultGroup:Z

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mState:Lcom/android/contacts/model/EntityDelta;

    if-nez v8, :cond_1

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    const/4 v4, 0x0

    .line 339
    .local v4, hasGroupMembership:Z
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mState:Lcom/android/contacts/model/EntityDelta;

    const-string v9, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v8, v9}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 340
    .local v2, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-eqz v2, :cond_3

    .line 341
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 342
    .local v7, values:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v8, "data1"

    invoke-virtual {v7, v8}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    .line 343
    .local v6, id:Ljava/lang/Long;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    .line 344
    const/4 v4, 0x1

    .line 350
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #id:Ljava/lang/Long;
    .end local v7           #values:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_3
    if-nez v4, :cond_0

    .line 351
    invoke-direct {p0}, Lcom/android/contacts/editor/RawContactEditorView;->getDefaultGroupId()J

    move-result-wide v0

    .line 352
    .local v0, defaultGroupId:J
    const-wide/16 v8, -0x1

    cmp-long v8, v0, v8

    if-eqz v8, :cond_0

    .line 353
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mState:Lcom/android/contacts/model/EntityDelta;

    iget-object v9, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipKind:Lcom/android/contacts/model/DataKind;

    invoke-static {v8, v9}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    .line 354
    .local v3, entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v8, "data1"

    invoke-virtual {v3, v8, v0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private getDefaultGroupId()J
    .locals 11

    .prologue
    const/4 v10, 0x5

    .line 364
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mState:Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v8}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v8

    const-string v9, "account_type"

    invoke-virtual {v8, v9}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 365
    .local v2, accountType:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mState:Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v8}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v8

    const-string v9, "account_name"

    invoke-virtual {v8, v9}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 366
    .local v1, accountName:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mState:Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v8}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v8

    const-string v9, "data_set"

    invoke-virtual {v8, v9}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, accountDataSet:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, -0x1

    invoke-interface {v8, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 368
    :cond_0
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 369
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 370
    .local v6, name:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 371
    .local v7, type:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, 0x2

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 372
    .local v3, dataSet:Ljava/lang/String;
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {v3, v0}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 374
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, 0x3

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 375
    .local v4, groupId:J
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v8, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_0

    .line 381
    .end local v3           #dataSet:Ljava/lang/String;
    .end local v4           #groupId:J
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #type:Ljava/lang/String;
    :goto_0
    return-wide v4

    :cond_1
    const-wide/16 v4, -0x1

    goto :goto_0
.end method

.method private showAddInformationPopupWindow()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 409
    new-instance v1, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 412
    .local v1, fields:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/editor/KindSectionView;>;"
    new-instance v5, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactEditorView;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAddFieldButton:Landroid/widget/Button;

    invoke-direct {v5, v7, v8}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 413
    .local v5, popupMenu:Landroid/widget/PopupMenu;
    invoke-virtual {v5}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    .line 414
    .local v4, menu:Landroid/view/Menu;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v7, p0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v2, v7, :cond_4

    .line 415
    iget-object v7, p0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 416
    .local v0, child:Landroid/view/View;
    instance-of v7, v0, Lcom/android/contacts/editor/KindSectionView;

    if-eqz v7, :cond_0

    move-object v6, v0

    .line 417
    check-cast v6, Lcom/android/contacts/editor/KindSectionView;

    .line 420
    .local v6, sectionView:Lcom/android/contacts/editor/KindSectionView;
    invoke-virtual {v6}, Lcom/android/contacts/editor/KindSectionView;->getEditorCount()I

    move-result v7

    if-lez v7, :cond_1

    .line 414
    .end local v6           #sectionView:Lcom/android/contacts/editor/KindSectionView;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 423
    .restart local v6       #sectionView:Lcom/android/contacts/editor/KindSectionView;
    :cond_1
    invoke-virtual {v6}, Lcom/android/contacts/editor/KindSectionView;->getKind()Lcom/android/contacts/model/DataKind;

    move-result-object v3

    .line 425
    .local v3, kind:Lcom/android/contacts/model/DataKind;
    iget v7, v3, Lcom/android/contacts/model/DataKind;->typeOverallMax:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    invoke-virtual {v6}, Lcom/android/contacts/editor/KindSectionView;->getEditorCount()I

    move-result v7

    if-nez v7, :cond_0

    .line 428
    :cond_2
    const-string v7, "#displayName"

    iget-object v8, v3, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 432
    const-string v7, "#phoneticName"

    iget-object v8, v3, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    invoke-virtual {v7}, Lcom/android/contacts/editor/PhoneticNameEditorView;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_0

    .line 437
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6}, Lcom/android/contacts/editor/KindSectionView;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v9, v7, v9, v8}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 438
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 442
    .end local v0           #child:Landroid/view/View;
    .end local v3           #kind:Lcom/android/contacts/model/DataKind;
    .end local v6           #sectionView:Lcom/android/contacts/editor/KindSectionView;
    :cond_4
    new-instance v7, Lcom/android/contacts/editor/RawContactEditorView$3;

    invoke-direct {v7, p0, v1}, Lcom/android/contacts/editor/RawContactEditorView$3;-><init>(Lcom/android/contacts/editor/RawContactEditorView;Ljava/util/ArrayList;)V

    invoke-virtual {v5, v7}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 456
    invoke-virtual {v5}, Landroid/widget/PopupMenu;->show()V

    .line 457
    return-void
.end method

.method private updatePhoneticNameVisibility()V
    .locals 3

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactEditorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 396
    .local v0, showByDefault:Z
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    invoke-virtual {v1}, Lcom/android/contacts/editor/PhoneticNameEditorView;->hasData()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticNameAdded:Z

    if-eqz v1, :cond_1

    .line 397
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/contacts/editor/PhoneticNameEditorView;->setVisibility(I)V

    .line 401
    :goto_0
    return-void

    .line 399
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/contacts/editor/PhoneticNameEditorView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getNameEditor()Lcom/android/contacts/editor/TextFieldsEditorView;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    return-object v0
.end method

.method public getPhoneticNameEditor()Lcom/android/contacts/editor/TextFieldsEditorView;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    return-object v0
.end method

.method public getRawContactId()J
    .locals 2

    .prologue
    .line 405
    iget-wide v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRawContactId:J

    return-wide v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 128
    invoke-super {p0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->onFinishInflate()V

    .line 130
    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactEditorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mInflater:Landroid/view/LayoutInflater;

    .line 132
    const v0, 0x7f06010d

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/StructuredNameEditorView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    .line 133
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    invoke-virtual {v0, v2}, Lcom/android/contacts/editor/StructuredNameEditorView;->setDeletable(Z)V

    .line 135
    const v0, 0x7f06010e

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/PhoneticNameEditorView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    .line 136
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    invoke-virtual {v0, v2}, Lcom/android/contacts/editor/PhoneticNameEditorView;->setDeletable(Z)V

    .line 138
    const v0, 0x7f060111

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    .line 140
    const v0, 0x7f0600ca

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountIcon:Landroid/widget/ImageView;

    .line 141
    const v0, 0x7f0600c8

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    .line 142
    const v0, 0x7f0600c9

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    .line 144
    const v0, 0x7f060112

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAddFieldButton:Landroid/widget/Button;

    .line 145
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAddFieldButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/contacts/editor/RawContactEditorView$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/editor/RawContactEditorView$1;-><init>(Lcom/android/contacts/editor/RawContactEditorView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    return-void
.end method

.method public setAutoAddToDefaultGroup(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 323
    iput-boolean p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAutoAddToDefaultGroup:Z

    .line 324
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setEnabled(Z)V

    .line 99
    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v2

    .line 100
    .local v2, view:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 101
    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 104
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    if-eqz v3, :cond_1

    .line 105
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    invoke-virtual {v3, p1}, Lcom/android/contacts/editor/StructuredNameEditorView;->setEnabled(Z)V

    .line 108
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    if-eqz v3, :cond_2

    .line 109
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    invoke-virtual {v3, p1}, Lcom/android/contacts/editor/PhoneticNameEditorView;->setEnabled(Z)V

    .line 112
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    .line 113
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 114
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 115
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_3
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    if-eqz v3, :cond_4

    .line 120
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    invoke-virtual {v3, p1}, Lcom/android/contacts/editor/GroupMembershipView;->setEnabled(Z)V

    .line 123
    :cond_4
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAddFieldButton:Landroid/widget/Button;

    invoke-virtual {v3, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 124
    return-void
.end method

.method public setGroupMetaData(Landroid/database/Cursor;)V
    .locals 1
    .parameter "groupMetaData"

    .prologue
    .line 315
    iput-object p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    .line 316
    invoke-direct {p0}, Lcom/android/contacts/editor/RawContactEditorView;->addToDefaultGroupIfNeeded()V

    .line 317
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    invoke-virtual {v0, p1}, Lcom/android/contacts/editor/GroupMembershipView;->setGroupMetaData(Landroid/database/Cursor;)V

    .line 320
    :cond_0
    return-void
.end method

.method public setState(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Lcom/android/contacts/editor/ViewIdGenerator;Z)V
    .locals 18
    .parameter "state"
    .parameter "type"
    .parameter "vig"
    .parameter "isProfile"

    .prologue
    .line 162
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/editor/RawContactEditorView;->mState:Lcom/android/contacts/model/EntityDelta;

    .line 165
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 168
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v5, v6}, Lcom/android/contacts/editor/ViewIdGenerator;->getId(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/contacts/editor/RawContactEditorView;->setId(I)V

    .line 173
    const-string v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v2}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)V

    .line 174
    const-string v2, "vnd.android.cursor.item/organization"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v2}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)V

    .line 176
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v16

    .line 177
    .local v16, values:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v2, "_id"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/contacts/editor/RawContactEditorView;->mRawContactId:J

    .line 180
    if-eqz p4, :cond_5

    .line 181
    const-string v2, "account_name"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 182
    .local v8, accountName:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 183
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    const v5, 0x7f0b01e6

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 208
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountIcon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/editor/RawContactEditorView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/android/contacts/model/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 211
    const-string v2, "vnd.android.cursor.item/photo"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v2}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)V

    .line 212
    const-string v2, "vnd.android.cursor.item/photo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v2

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/contacts/editor/RawContactEditorView;->setHasPhotoEditor(Z)V

    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->isEnabled()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/contacts/editor/PhotoEditorView;->setEnabled(Z)V

    .line 214
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->isEnabled()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/contacts/editor/StructuredNameEditorView;->setEnabled(Z)V

    .line 216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->isEnabled()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/contacts/editor/PhoneticNameEditorView;->setEnabled(Z)V

    .line 219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/contacts/editor/StructuredNameEditorView;->setVisibility(I)V

    .line 221
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/contacts/editor/PhoneticNameEditorView;->setVisibility(I)V

    .line 223
    const-string v2, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipKind:Lcom/android/contacts/model/DataKind;

    .line 224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipKind:Lcom/android/contacts/model/DataKind;

    if-eqz v2, :cond_2

    .line 225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f040065

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/GroupMembershipView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    .line 227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipKind:Lcom/android/contacts/model/DataKind;

    invoke-virtual {v2, v5}, Lcom/android/contacts/editor/GroupMembershipView;->setKind(Lcom/android/contacts/model/DataKind;)V

    .line 228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->isEnabled()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/contacts/editor/GroupMembershipView;->setEnabled(Z)V

    .line 232
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/AccountType;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_3
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/DataKind;

    .line 234
    .local v3, kind:Lcom/android/contacts/model/DataKind;
    iget-boolean v2, v3, Lcom/android/contacts/model/DataKind;->editable:Z

    if-eqz v2, :cond_3

    .line 236
    iget-object v12, v3, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    .line 237
    .local v12, mimeType:Ljava/lang/String;
    const-string v2, "vnd.android.cursor.item/name"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 239
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/android/contacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v4

    .line 240
    .local v4, primary:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    const-string v5, "#displayName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v3

    .end local v3           #kind:Lcom/android/contacts/model/DataKind;
    const/4 v6, 0x0

    move-object/from16 v5, p1

    move-object/from16 v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/contacts/editor/StructuredNameEditorView;->setValues(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 243
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    const-string v5, "#phoneticName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v3

    const/4 v6, 0x0

    move-object/from16 v5, p1

    move-object/from16 v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/contacts/editor/PhoneticNameEditorView;->setValues(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    goto :goto_3

    .line 186
    .end local v4           #primary:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #mimeType:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 187
    .local v9, accountType:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/editor/RawContactEditorView;->mContext:Landroid/content/Context;

    const v6, 0x7f0b01e7

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v9, v7, v17

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 192
    .end local v8           #accountName:Ljava/lang/String;
    .end local v9           #accountType:Ljava/lang/CharSequence;
    :cond_5
    const-string v2, "account_name"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 193
    .restart local v8       #accountName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 194
    .restart local v9       #accountType:Ljava/lang/CharSequence;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mContext:Landroid/content/Context;

    const v5, 0x7f0b010d

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 197
    :cond_6
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/editor/RawContactEditorView;->mContext:Landroid/content/Context;

    const v6, 0x7f0b0165

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v8, v7, v17

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/editor/RawContactEditorView;->mContext:Landroid/content/Context;

    const v6, 0x7f0b0164

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v9, v7, v17

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 203
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 212
    .end local v9           #accountType:Ljava/lang/CharSequence;
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 246
    .restart local v3       #kind:Lcom/android/contacts/model/DataKind;
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v12       #mimeType:Ljava/lang/String;
    :cond_9
    const-string v2, "vnd.android.cursor.item/photo"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 248
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/android/contacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v4

    .line 249
    .restart local v4       #primary:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v2

    const/4 v6, 0x0

    move-object/from16 v5, p1

    move-object/from16 v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/contacts/editor/PhotoEditorView;->setValues(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    goto/16 :goto_3

    .line 250
    .end local v4           #primary:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_a
    const-string v2, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 251
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    if-eqz v2, :cond_3

    .line 252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/contacts/editor/GroupMembershipView;->setState(Lcom/android/contacts/model/EntityDelta;)V

    goto/16 :goto_3

    .line 254
    :cond_b
    const-string v2, "vnd.android.cursor.item/organization"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f040066

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/android/contacts/editor/KindSectionView;

    .line 258
    .local v15, section:Lcom/android/contacts/editor/KindSectionView;
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Lcom/android/contacts/editor/KindSectionView;->setTitleVisible(Z)V

    .line 259
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->isEnabled()Z

    move-result v2

    invoke-virtual {v15, v2}, Lcom/android/contacts/editor/KindSectionView;->setEnabled(Z)V

    .line 260
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v15, v3, v0, v2, v1}, Lcom/android/contacts/editor/KindSectionView;->setState(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 263
    invoke-virtual {v15}, Lcom/android/contacts/editor/KindSectionView;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    .line 264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v2, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_3

    .line 268
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f04006e

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    .line 270
    .local v14, organizationView:Landroid/view/View;
    const v2, 0x7f0600ed

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 272
    .local v10, addOrganizationButton:Landroid/view/View;
    const v2, 0x7f0600ee

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    .line 275
    .local v13, organizationSectionViewContainer:Landroid/view/ViewGroup;
    invoke-virtual {v13, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 278
    new-instance v2, Lcom/android/contacts/editor/RawContactEditorView$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v10, v13}, Lcom/android/contacts/editor/RawContactEditorView$2;-><init>(Lcom/android/contacts/editor/RawContactEditorView;Landroid/view/View;Landroid/view/ViewGroup;)V

    invoke-virtual {v10, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v2, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_3

    .line 293
    .end local v10           #addOrganizationButton:Landroid/view/View;
    .end local v13           #organizationSectionViewContainer:Landroid/view/ViewGroup;
    .end local v14           #organizationView:Landroid/view/View;
    .end local v15           #section:Lcom/android/contacts/editor/KindSectionView;
    :cond_d
    iget-object v2, v3, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f040066

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/android/contacts/editor/KindSectionView;

    .line 296
    .restart local v15       #section:Lcom/android/contacts/editor/KindSectionView;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->isEnabled()Z

    move-result v2

    invoke-virtual {v15, v2}, Lcom/android/contacts/editor/KindSectionView;->setEnabled(Z)V

    .line 297
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v15, v3, v0, v2, v1}, Lcom/android/contacts/editor/KindSectionView;->setState(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 298
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v2, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_3

    .line 302
    .end local v3           #kind:Lcom/android/contacts/model/DataKind;
    .end local v12           #mimeType:Ljava/lang/String;
    .end local v15           #section:Lcom/android/contacts/editor/KindSectionView;
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    if-eqz v2, :cond_f

    .line 303
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 306
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->updatePhoneticNameVisibility()V

    .line 308
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->addToDefaultGroupIfNeeded()V

    .line 310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAddFieldButton:Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->isEnabled()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0
.end method
