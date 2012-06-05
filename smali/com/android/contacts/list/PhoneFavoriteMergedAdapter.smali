.class public Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;
.super Landroid/widget/BaseAdapter;
.source "PhoneFavoriteMergedAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/PhoneFavoriteMergedAdapter$1;,
        Lcom/android/contacts/list/PhoneFavoriteMergedAdapter$CustomDataSetObserver;
    }
.end annotation


# instance fields
.field private final mAccountFilterHeaderContainer:Landroid/view/View;

.field private final mContactEntryListAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

.field private final mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

.field private final mFrequentHeaderPaddingTop:I

.field private final mItemPaddingLeft:I

.field private final mItemPaddingRight:I

.field private final mObserver:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/list/ContactTileAdapter;Landroid/view/View;Lcom/android/contacts/list/ContactEntryListAdapter;)V
    .locals 3
    .parameter "context"
    .parameter "contactTileAdapter"
    .parameter "accountFilterHeaderContainer"
    .parameter "contactEntryListAdapter"

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 61
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f080019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mItemPaddingLeft:I

    .line 62
    const v1, 0x7f08001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mItemPaddingRight:I

    .line 63
    const v1, 0x7f08003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mFrequentHeaderPaddingTop:I

    .line 65
    iput-object p2, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    .line 66
    iput-object p4, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    .line 68
    iput-object p3, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mAccountFilterHeaderContainer:Landroid/view/View;

    .line 70
    new-instance v1, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter$CustomDataSetObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter$CustomDataSetObserver;-><init>(Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;Lcom/android/contacts/list/PhoneFavoriteMergedAdapter$1;)V

    iput-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mObserver:Landroid/database/DataSetObserver;

    .line 71
    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    iget-object v2, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactTileAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 72
    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-object v2, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 73
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactTileAdapter;->areAllItemsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mAccountFilterHeaderContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->areAllItemsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 77
    iget-object v2, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactTileAdapter;->getCount()I

    move-result v1

    .line 78
    .local v1, contactTileAdapterCount:I
    iget-object v2, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->getCount()I

    move-result v0

    .line 79
    .local v0, contactEntryListAdapterCount:I
    iget-object v2, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->isLoading()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    add-int/lit8 v2, v1, 0x1

    .line 83
    :goto_0
    return v2

    :cond_0
    add-int v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4
    .parameter "position"

    .prologue
    .line 89
    iget-object v3, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactTileAdapter;->getCount()I

    move-result v1

    .line 90
    .local v1, contactTileAdapterCount:I
    iget-object v3, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactEntryListAdapter;->getCount()I

    move-result v0

    .line 91
    .local v0, contactEntryListAdapterCount:I
    if-ge p1, v1, :cond_0

    .line 92
    iget-object v3, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v3, p1}, Lcom/android/contacts/list/ContactTileAdapter;->getItem(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 97
    :goto_0
    return-object v3

    .line 93
    :cond_0
    if-ne p1, v1, :cond_1

    .line 94
    iget-object v3, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mAccountFilterHeaderContainer:Landroid/view/View;

    goto :goto_0

    .line 96
    :cond_1
    sub-int v3, p1, v1

    add-int/lit8 v2, v3, -0x1

    .line 97
    .local v2, localPosition:I
    iget-object v3, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v3, v2}, Lcom/android/contacts/list/ContactTileAdapter;->getItem(I)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 103
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 6
    .parameter "position"

    .prologue
    .line 115
    iget-object v4, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactTileAdapter;->getCount()I

    move-result v1

    .line 116
    .local v1, contactTileAdapterCount:I
    iget-object v4, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactEntryListAdapter;->getCount()I

    move-result v0

    .line 117
    .local v0, contactEntryListAdapterCount:I
    if-ge p1, v1, :cond_1

    .line 118
    iget-object v4, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v4, p1}, Lcom/android/contacts/list/ContactTileAdapter;->getItemViewType(I)I

    move-result v3

    .line 126
    :cond_0
    :goto_0
    return v3

    .line 119
    :cond_1
    if-ne p1, v1, :cond_2

    .line 120
    iget-object v4, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactTileAdapter;->getViewTypeCount()I

    move-result v4

    iget-object v5, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v5}, Lcom/android/contacts/list/ContactEntryListAdapter;->getViewTypeCount()I

    move-result v5

    add-int v3, v4, v5

    goto :goto_0

    .line 123
    :cond_2
    sub-int v4, p1, v1

    add-int/lit8 v2, v4, -0x1

    .line 124
    .local v2, localPosition:I
    iget-object v4, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v4, v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->getItemViewType(I)I

    move-result v3

    .line 126
    .local v3, type:I
    if-ltz v3, :cond_0

    iget-object v4, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactTileAdapter;->getViewTypeCount()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 3
    .parameter "sectionIndex"

    .prologue
    .line 197
    iget-object v2, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactTileAdapter;->getCount()I

    move-result v0

    .line 198
    .local v0, contactTileAdapterCount:I
    iget-object v2, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v2, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPositionForSection(I)I

    move-result v1

    .line 199
    .local v1, localPosition:I
    add-int/lit8 v2, v0, 0x1

    add-int/2addr v2, v1

    return v2
.end method

.method public getSectionForPosition(I)I
    .locals 3
    .parameter "position"

    .prologue
    .line 204
    iget-object v2, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactTileAdapter;->getCount()I

    move-result v0

    .line 205
    .local v0, contactTileAdapterCount:I
    if-gt p1, v0, :cond_0

    .line 206
    const/4 v2, 0x0

    .line 209
    :goto_0
    return v2

    .line 208
    :cond_0
    sub-int v2, p1, v0

    add-int/lit8 v1, v2, -0x1

    .line 209
    .local v1, localPosition:I
    iget-object v2, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v2, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getSectionForPosition(I)I

    move-result v2

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 132
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v12}, Lcom/android/contacts/list/ContactTileAdapter;->getCount()I

    move-result v5

    .line 133
    .local v5, contactTileAdapterCount:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v12}, Lcom/android/contacts/list/ContactEntryListAdapter;->getCount()I

    move-result v4

    .line 137
    .local v4, contactEntryListAdapterCount:I
    move/from16 v0, p1

    if-ge v0, v5, :cond_2

    .line 138
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v12, v0, v1, v2}, Lcom/android/contacts/list/ContactTileAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 139
    .local v11, view:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v12}, Lcom/android/contacts/list/ContactTileAdapter;->getFrequentHeaderPosition()I

    move-result v7

    .line 140
    .local v7, frequentHeaderPosition:I
    move/from16 v0, p1

    if-ge v0, v7, :cond_0

    .line 169
    .end local v7           #frequentHeaderPosition:I
    .end local v11           #view:Landroid/view/View;
    :goto_0
    return-object v11

    .line 142
    .restart local v7       #frequentHeaderPosition:I
    .restart local v11       #view:Landroid/view/View;
    :cond_0
    move/from16 v0, p1

    if-ne v0, v7, :cond_1

    .line 143
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mItemPaddingLeft:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mFrequentHeaderPaddingTop:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mItemPaddingRight:I

    invoke-virtual {v11}, Landroid/view/View;->getPaddingBottom()I

    move-result v15

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_1
    move-object v6, v11

    .line 147
    check-cast v6, Landroid/widget/FrameLayout;

    .line 148
    .local v6, frameLayout:Landroid/widget/FrameLayout;
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 149
    .local v3, child:Landroid/view/View;
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x2

    invoke-direct {v10, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 152
    .local v10, params:Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mItemPaddingLeft:I

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mItemPaddingRight:I

    const/4 v15, 0x0

    invoke-virtual {v10, v12, v13, v14, v15}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 153
    invoke-virtual {v3, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 156
    .end local v3           #child:Landroid/view/View;
    .end local v6           #frameLayout:Landroid/widget/FrameLayout;
    .end local v7           #frequentHeaderPosition:I
    .end local v10           #params:Landroid/widget/FrameLayout$LayoutParams;
    .end local v11           #view:Landroid/view/View;
    :cond_2
    move/from16 v0, p1

    if-ne v0, v5, :cond_3

    .line 157
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mAccountFilterHeaderContainer:Landroid/view/View;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mItemPaddingLeft:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mAccountFilterHeaderContainer:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getPaddingTop()I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mItemPaddingRight:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mAccountFilterHeaderContainer:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getPaddingBottom()I

    move-result v16

    invoke-virtual/range {v12 .. v16}, Landroid/view/View;->setPadding(IIII)V

    .line 161
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mAccountFilterHeaderContainer:Landroid/view/View;

    goto :goto_0

    .line 163
    :cond_3
    sub-int v12, p1, v5

    add-int/lit8 v9, v12, -0x1

    .line 164
    .local v9, localPosition:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v12, v9, v0, v13}, Lcom/android/contacts/list/ContactEntryListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/list/ContactListItemView;

    .line 166
    .local v8, itemView:Lcom/android/contacts/list/ContactListItemView;
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mItemPaddingLeft:I

    invoke-virtual {v8}, Lcom/android/contacts/list/ContactListItemView;->getPaddingTop()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mItemPaddingRight:I

    invoke-virtual {v8}, Lcom/android/contacts/list/ContactListItemView;->getPaddingBottom()I

    move-result v15

    invoke-virtual {v8, v12, v13, v14, v15}, Lcom/android/contacts/list/ContactListItemView;->setPadding(IIII)V

    .line 168
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mItemPaddingLeft:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mItemPaddingRight:I

    invoke-virtual {v8, v12, v13}, Lcom/android/contacts/list/ContactListItemView;->setSelectionBoundsHorizontalMargin(II)V

    move-object v11, v8

    .line 169
    goto/16 :goto_0
.end method

.method public getViewTypeCount()I
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactTileAdapter;->getViewTypeCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getViewTypeCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 4
    .parameter "position"

    .prologue
    .line 182
    iget-object v3, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactTileAdapter;->getCount()I

    move-result v1

    .line 183
    .local v1, contactTileAdapterCount:I
    iget-object v3, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactEntryListAdapter;->getCount()I

    move-result v0

    .line 184
    .local v0, contactEntryListAdapterCount:I
    if-ge p1, v1, :cond_0

    .line 185
    iget-object v3, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v3, p1}, Lcom/android/contacts/list/ContactTileAdapter;->isEnabled(I)Z

    move-result v3

    .line 191
    :goto_0
    return v3

    .line 186
    :cond_0
    if-ne p1, v1, :cond_1

    .line 188
    const/4 v3, 0x0

    goto :goto_0

    .line 190
    :cond_1
    sub-int v3, p1, v1

    add-int/lit8 v2, v3, -0x1

    .line 191
    .local v2, localPosition:I
    iget-object v3, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v3, v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->isEnabled(I)Z

    move-result v3

    goto :goto_0
.end method

.method public shouldShowFirstScroller(I)Z
    .locals 2
    .parameter "firstVisibleItem"

    .prologue
    .line 219
    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactTileAdapter;->getCount()I

    move-result v0

    .line 220
    .local v0, contactTileAdapterCount:I
    if-le p1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
