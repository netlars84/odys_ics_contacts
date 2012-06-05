.class public Lcom/android/contacts/editor/GroupMembershipView;
.super Landroid/widget/LinearLayout;
.source "GroupMembershipView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;
    }
.end annotation


# static fields
.field private static final CREATE_NEW_GROUP_GROUP_ID:I = 0x85


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mAccountType:Ljava/lang/String;

.field private mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDataSet:Ljava/lang/String;

.field private mDefaultGroupId:J

.field private mDefaultGroupVisibilityKnown:Z

.field private mDefaultGroupVisible:Z

.field private mFavoritesGroupId:J

.field private mGroupList:Landroid/widget/TextView;

.field private mGroupMetaData:Landroid/database/Cursor;

.field private mKind:Lcom/android/contacts/model/DataKind;

.field private mNoGroupString:Ljava/lang/String;

.field private mPopup:Landroid/widget/ListPopupWindow;

.field private mPrimaryTextColor:I

.field private mSecondaryTextColor:I

.field private mState:Lcom/android/contacts/model/EntityDelta;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 110
    return-void
.end method

.method private createNewGroup()V
    .locals 4

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 352
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    .line 355
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/editor/GroupMembershipView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountType:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDataSet:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    return-void
.end method

.method private hasMembership(J)Z
    .locals 7
    .parameter "groupId"

    .prologue
    const/4 v4, 0x1

    .line 331
    iget-wide v5, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupId:J

    cmp-long v5, p1, v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/contacts/editor/GroupMembershipView;->mState:Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v5}, Lcom/android/contacts/model/EntityDelta;->isContactInsert()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 346
    :goto_0
    return v4

    .line 335
    :cond_0
    iget-object v5, p0, Lcom/android/contacts/editor/GroupMembershipView;->mState:Lcom/android/contacts/model/EntityDelta;

    const-string v6, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v5, v6}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 336
    .local v0, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-eqz v0, :cond_2

    .line 337
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 338
    .local v3, values:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v5

    if-nez v5, :cond_1

    .line 339
    const-string v5, "data1"

    invoke-virtual {v3, v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 340
    .local v2, id:Ljava/lang/Long;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v5, v5, p1

    if-nez v5, :cond_1

    goto :goto_0

    .line 346
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #id:Ljava/lang/Long;
    .end local v3           #values:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isGroupChecked(J)Z
    .locals 5
    .parameter "groupId"

    .prologue
    .line 320
    iget-object v3, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    .line 321
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 322
    iget-object v3, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    .line 323
    .local v2, item:Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;
    invoke-virtual {v2}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->getGroupId()J

    move-result-wide v3

    cmp-long v3, p1, v3

    if-nez v3, :cond_0

    .line 324
    invoke-virtual {v2}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->isChecked()Z

    move-result v3

    .line 327
    .end local v2           #item:Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;
    :goto_1
    return v3

    .line 321
    .restart local v2       #item:Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 327
    .end local v2           #item:Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private updateView()V
    .locals 12

    .prologue
    .line 151
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountType:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountName:Ljava/lang/String;

    if-nez v8, :cond_2

    .line 153
    :cond_0
    const/16 v8, 0x8

    invoke-virtual {p0, v8}, Lcom/android/contacts/editor/GroupMembershipView;->setVisibility(I)V

    .line 218
    :cond_1
    :goto_0
    return-void

    .line 157
    :cond_2
    const/4 v0, 0x0

    .line 158
    .local v0, accountHasGroups:Z
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mFavoritesGroupId:J

    .line 159
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupId:J

    .line 161
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .local v6, sb:Ljava/lang/StringBuilder;
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, -0x1

    invoke-interface {v8, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 163
    :cond_3
    :goto_1
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 164
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, accountName:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, accountType:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, 0x2

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, dataSet:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountName:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountType:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDataSet:Ljava/lang/String;

    invoke-static {v3, v8}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 169
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, 0x3

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 170
    .local v4, groupId:J
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, 0x6

    invoke-interface {v8, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, 0x6

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_5

    .line 172
    iput-wide v4, p0, Lcom/android/contacts/editor/GroupMembershipView;->mFavoritesGroupId:J

    .line 182
    :goto_2
    iget-wide v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mFavoritesGroupId:J

    cmp-long v8, v4, v8

    if-eqz v8, :cond_3

    iget-wide v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupId:J

    cmp-long v8, v4, v8

    if-eqz v8, :cond_3

    invoke-direct {p0, v4, v5}, Lcom/android/contacts/editor/GroupMembershipView;->hasMembership(J)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 184
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, 0x4

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 185
    .local v7, title:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-eqz v8, :cond_4

    .line 186
    const-string v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    :cond_4
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 173
    .end local v7           #title:Ljava/lang/String;
    :cond_5
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, 0x5

    invoke-interface {v8, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-nez v8, :cond_6

    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, 0x5

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_6

    .line 175
    iput-wide v4, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupId:J

    goto :goto_2

    .line 177
    :cond_6
    const/4 v0, 0x1

    goto :goto_2

    .line 193
    .end local v1           #accountName:Ljava/lang/String;
    .end local v2           #accountType:Ljava/lang/String;
    .end local v3           #dataSet:Ljava/lang/String;
    .end local v4           #groupId:J
    :cond_7
    if-nez v0, :cond_8

    .line 194
    const/16 v8, 0x8

    invoke-virtual {p0, v8}, Lcom/android/contacts/editor/GroupMembershipView;->setVisibility(I)V

    goto/16 :goto_0

    .line 198
    :cond_8
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    if-nez v8, :cond_9

    .line 199
    const v8, 0x7f0600e7

    invoke-virtual {p0, v8}, Lcom/android/contacts/editor/GroupMembershipView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    .line 200
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    :cond_9
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/editor/GroupMembershipView;->isEnabled()Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 204
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-nez v8, :cond_a

    .line 205
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/contacts/editor/GroupMembershipView;->mNoGroupString:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    iget v9, p0, Lcom/android/contacts/editor/GroupMembershipView;->mSecondaryTextColor:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 211
    :goto_3
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/contacts/editor/GroupMembershipView;->setVisibility(I)V

    .line 213
    iget-boolean v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupVisibilityKnown:Z

    if-nez v8, :cond_1

    .line 215
    iget-wide v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupId:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_b

    iget-wide v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupId:J

    invoke-direct {p0, v8, v9}, Lcom/android/contacts/editor/GroupMembershipView;->hasMembership(J)Z

    move-result v8

    if-nez v8, :cond_b

    const/4 v8, 0x1

    :goto_4
    iput-boolean v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupVisible:Z

    .line 216
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupVisibilityKnown:Z

    goto/16 :goto_0

    .line 208
    :cond_a
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    iget v9, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPrimaryTextColor:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 215
    :cond_b
    const/4 v8, 0x0

    goto :goto_4
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 17
    .parameter "v"

    .prologue
    .line 222
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v11}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 223
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v11}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 265
    :goto_0
    return-void

    .line 227
    :cond_0
    new-instance v11, Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/GroupMembershipView;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f040062

    invoke-direct {v11, v12, v13}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 230
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v12, -0x1

    invoke-interface {v11, v12}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 231
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 232
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, accountName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, accountType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v12, 0x2

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 235
    .local v5, dataSet:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountName:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountType:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mDataSet:Ljava/lang/String;

    invoke-static {v5, v11}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 237
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v12, 0x3

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 238
    .local v6, groupId:J
    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mFavoritesGroupId:J

    cmp-long v11, v6, v11

    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupId:J

    cmp-long v11, v6, v11

    if-nez v11, :cond_2

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupVisible:Z

    if-eqz v11, :cond_1

    .line 240
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v12, 0x4

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 241
    .local v10, title:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/contacts/editor/GroupMembershipView;->hasMembership(J)Z

    move-result v3

    .line 242
    .local v3, checked:Z
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Landroid/widget/ArrayAdapter;

    new-instance v12, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-direct {v12, v6, v7, v10, v3}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;-><init>(JLjava/lang/String;Z)V

    invoke-virtual {v11, v12}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 247
    .end local v1           #accountName:Ljava/lang/String;
    .end local v2           #accountType:Ljava/lang/String;
    .end local v3           #checked:Z
    .end local v5           #dataSet:Ljava/lang/String;
    .end local v6           #groupId:J
    .end local v10           #title:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Landroid/widget/ArrayAdapter;

    new-instance v12, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    const-wide/16 v13, 0x85

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/GroupMembershipView;->getContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x7f0b01ae

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-direct/range {v12 .. v16}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;-><init>(JLjava/lang/String;Z)V

    invoke-virtual {v11, v12}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 250
    new-instance v11, Landroid/widget/ListPopupWindow;

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/GroupMembershipView;->getContext()Landroid/content/Context;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    .line 251
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    invoke-virtual {v11, v12}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 252
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v11, v12}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 253
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 254
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v11}, Landroid/widget/ListPopupWindow;->show()V

    .line 256
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v11}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v9

    .line 257
    .local v9, listView:Landroid/widget/ListView;
    const/4 v11, 0x2

    invoke-virtual {v9, v11}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 258
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 259
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v11}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v4

    .line 260
    .local v4, count:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    if-ge v8, v4, :cond_4

    .line 261
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v11, v8}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v11}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->isChecked()Z

    move-result v11

    invoke-virtual {v9, v8, v11}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 260
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 264
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 269
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 270
    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 272
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    .line 274
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 114
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 115
    iget-object v1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 116
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f07001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPrimaryTextColor:I

    .line 117
    const v1, 0x7f07001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mSecondaryTextColor:I

    .line 118
    iget-object v1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0184

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mNoGroupString:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 13
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 278
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    move-object v8, p1

    check-cast v8, Landroid/widget/ListView;

    .line 279
    .local v8, list:Landroid/widget/ListView;
    iget-object v9, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v9}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    .line 281
    .local v0, count:I
    add-int/lit8 v9, v0, -0x1

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 282
    add-int/lit8 v9, v0, -0x1

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 283
    invoke-direct {p0}, Lcom/android/contacts/editor/GroupMembershipView;->createNewGroup()V

    .line 317
    :goto_0
    return-void

    .line 287
    :cond_0
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v0, :cond_1

    .line 288
    iget-object v9, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v9, v5}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v8, v5}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->setChecked(Z)V

    .line 287
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 292
    :cond_1
    iget-object v9, p0, Lcom/android/contacts/editor/GroupMembershipView;->mState:Lcom/android/contacts/model/EntityDelta;

    const-string v10, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v9, v10}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 293
    .local v1, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-eqz v1, :cond_4

    .line 294
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 295
    .local v2, entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v9

    if-nez v9, :cond_2

    .line 296
    const-string v9, "data1"

    invoke-virtual {v2, v9}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .line 297
    .local v3, groupId:Ljava/lang/Long;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-wide v11, p0, Lcom/android/contacts/editor/GroupMembershipView;->mFavoritesGroupId:J

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-wide v11, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupId:J

    cmp-long v9, v9, v11

    if-nez v9, :cond_3

    iget-boolean v9, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupVisible:Z

    if-eqz v9, :cond_2

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-direct {p0, v9, v10}, Lcom/android/contacts/editor/GroupMembershipView;->isGroupChecked(J)Z

    move-result v9

    if-nez v9, :cond_2

    .line 300
    invoke-virtual {v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->markDeleted()V

    goto :goto_2

    .line 307
    .end local v2           #entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v3           #groupId:Ljava/lang/Long;
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_4
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v0, :cond_6

    .line 308
    iget-object v9, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v9, v5}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    .line 309
    .local v7, item:Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;
    invoke-virtual {v7}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->getGroupId()J

    move-result-wide v3

    .line 310
    .local v3, groupId:J
    invoke-virtual {v7}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-direct {p0, v3, v4}, Lcom/android/contacts/editor/GroupMembershipView;->hasMembership(J)Z

    move-result v9

    if-nez v9, :cond_5

    .line 311
    iget-object v9, p0, Lcom/android/contacts/editor/GroupMembershipView;->mState:Lcom/android/contacts/model/EntityDelta;

    iget-object v10, p0, Lcom/android/contacts/editor/GroupMembershipView;->mKind:Lcom/android/contacts/model/DataKind;

    invoke-static {v9, v10}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v2

    .line 312
    .restart local v2       #entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v9, "data1"

    invoke-virtual {v2, v9, v3, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;J)V

    .line 307
    .end local v2           #entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 316
    .end local v3           #groupId:J
    .end local v7           #item:Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;
    :cond_6
    invoke-direct {p0}, Lcom/android/contacts/editor/GroupMembershipView;->updateView()V

    goto/16 :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 124
    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 127
    :cond_0
    return-void
.end method

.method public setGroupMetaData(Landroid/database/Cursor;)V
    .locals 0
    .parameter "groupMetaData"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    .line 137
    invoke-direct {p0}, Lcom/android/contacts/editor/GroupMembershipView;->updateView()V

    .line 138
    return-void
.end method

.method public setKind(Lcom/android/contacts/model/DataKind;)V
    .locals 3
    .parameter "kind"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mKind:Lcom/android/contacts/model/DataKind;

    .line 131
    const v1, 0x7f0600c4

    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/GroupMembershipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 132
    .local v0, kindTitle:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/contacts/editor/GroupMembershipView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p1, Lcom/android/contacts/model/DataKind;->titleRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    return-void
.end method

.method public setState(Lcom/android/contacts/model/EntityDelta;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mState:Lcom/android/contacts/model/EntityDelta;

    .line 142
    invoke-virtual {p1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v0

    .line 143
    .local v0, values:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountType:Ljava/lang/String;

    .line 144
    const-string v1, "account_name"

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountName:Ljava/lang/String;

    .line 145
    const-string v1, "data_set"

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDataSet:Ljava/lang/String;

    .line 146
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupVisibilityKnown:Z

    .line 147
    invoke-direct {p0}, Lcom/android/contacts/editor/GroupMembershipView;->updateView()V

    .line 148
    return-void
.end method
