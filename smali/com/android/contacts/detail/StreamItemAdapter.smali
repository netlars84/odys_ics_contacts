.class public Lcom/android/contacts/detail/StreamItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "StreamItemAdapter.java"


# static fields
.field private static final ITEM_VIEW_TYPE_HEADER:I = 0x0

.field private static final ITEM_VIEW_TYPE_STREAM_ITEM:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mItemClickListener:Landroid/view/View$OnClickListener;

.field private final mPhotoClickListener:Landroid/view/View$OnClickListener;

.field private mStreamItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/util/StreamItemEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "context"
    .parameter "itemClickListener"
    .parameter "photoClickListener"

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/contacts/detail/StreamItemAdapter;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/android/contacts/detail/StreamItemAdapter;->mItemClickListener:Landroid/view/View$OnClickListener;

    .line 53
    iput-object p3, p0, Lcom/android/contacts/detail/StreamItemAdapter;->mPhotoClickListener:Landroid/view/View$OnClickListener;

    .line 54
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/detail/StreamItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 55
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/StreamItemAdapter;->mStreamItems:Ljava/util/List;

    .line 56
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 62
    iget-object v1, p0, Lcom/android/contacts/detail/StreamItemAdapter;->mStreamItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 63
    .local v0, count:I
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    add-int/lit8 v1, v0, 0x1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 68
    if-nez p1, :cond_0

    .line 69
    const/4 v0, 0x0

    .line 71
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/StreamItemAdapter;->mStreamItems:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 76
    if-nez p1, :cond_0

    .line 77
    const-wide/16 v0, -0x1

    .line 79
    :goto_0
    return-wide v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    int-to-long v0, v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 134
    if-nez p1, :cond_0

    .line 135
    const/4 v0, 0x0

    .line 137
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 98
    if-nez p1, :cond_0

    .line 99
    iget-object v5, p0, Lcom/android/contacts/detail/StreamItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f04008e

    invoke-virtual {v5, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 129
    :goto_0
    return-object v4

    .line 101
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/StreamItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/util/StreamItemEntry;

    .line 102
    .local v3, streamItem:Lcom/android/contacts/util/StreamItemEntry;
    iget-object v5, p0, Lcom/android/contacts/detail/StreamItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v2

    .line 103
    .local v2, manager:Lcom/android/contacts/model/AccountTypeManager;
    invoke-virtual {v3}, Lcom/android/contacts/util/StreamItemEntry;->getAccountType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/contacts/util/StreamItemEntry;->getDataSet()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v0

    .line 106
    .local v0, accountType:Lcom/android/contacts/model/AccountType;
    iget-object v7, p0, Lcom/android/contacts/detail/StreamItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v8, p0, Lcom/android/contacts/detail/StreamItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/contacts/model/AccountType;->getViewStreamItemPhotoActivity()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    move-object v5, v6

    :goto_1
    invoke-static {v7, v8, v3, v6, v5}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->createStreamItemView(Landroid/view/LayoutInflater;Landroid/content/Context;Lcom/android/contacts/util/StreamItemEntry;Landroid/widget/LinearLayout;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v4

    .line 112
    .local v4, view:Landroid/view/View;
    const v5, 0x7f060123

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 116
    .local v1, contentView:Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/contacts/model/AccountType;->getViewStreamItemActivity()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 117
    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 118
    invoke-virtual {v1, v10}, Landroid/view/View;->setFocusable(Z)V

    .line 119
    iget-object v5, p0, Lcom/android/contacts/detail/StreamItemAdapter;->mItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    invoke-virtual {v1, v10}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 106
    .end local v1           #contentView:Landroid/view/View;
    .end local v4           #view:Landroid/view/View;
    :cond_1
    iget-object v5, p0, Lcom/android/contacts/detail/StreamItemAdapter;->mPhotoClickListener:Landroid/view/View$OnClickListener;

    goto :goto_1

    .line 122
    .restart local v1       #contentView:Landroid/view/View;
    .restart local v4       #view:Landroid/view/View;
    :cond_2
    invoke-virtual {v1, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 123
    invoke-virtual {v1, v9}, Landroid/view/View;->setFocusable(Z)V

    .line 124
    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    invoke-virtual {v1, v9}, Landroid/view/View;->setClickable(Z)V

    .line 127
    invoke-virtual {v1, v9}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public setStreamItems(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/util/StreamItemEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, streamItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/util/StreamItemEntry;>;"
    iput-object p1, p0, Lcom/android/contacts/detail/StreamItemAdapter;->mStreamItems:Ljava/util/List;

    .line 142
    invoke-virtual {p0}, Lcom/android/contacts/detail/StreamItemAdapter;->notifyDataSetChanged()V

    .line 143
    return-void
.end method
