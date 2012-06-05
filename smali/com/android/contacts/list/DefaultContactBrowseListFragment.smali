.class public Lcom/android/contacts/list/DefaultContactBrowseListFragment;
.super Lcom/android/contacts/list/ContactBrowseListFragment;
.source "DefaultContactBrowseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/DefaultContactBrowseListFragment$FilterHeaderClickListener;
    }
.end annotation


# static fields
.field private static final REQUEST_CODE_ACCOUNT_FILTER:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccountFilterHeader:Landroid/view/View;

.field private mCounterHeaderView:Landroid/widget/TextView;

.field private mFilterHeaderClickListener:Landroid/view/View$OnClickListener;

.field private mMessageContainer:Landroid/widget/FrameLayout;

.field private mPaddingView:Landroid/view/View;

.field private mProfileHeader:Landroid/view/View;

.field private mProfileHeaderContainer:Landroid/widget/FrameLayout;

.field private mProfileMessage:Landroid/widget/Button;

.field private mProfileTitle:Landroid/widget/TextView;

.field private mSearchHeaderView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 68
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;-><init>()V

    .line 66
    new-instance v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$FilterHeaderClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$FilterHeaderClickListener;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Lcom/android/contacts/list/DefaultContactBrowseListFragment$1;)V

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mFilterHeaderClickListener:Landroid/view/View$OnClickListener;

    .line 69
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setPhotoLoaderEnabled(Z)V

    .line 70
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 71
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setVisibleScrollbarEnabled(Z)V

    .line 72
    return-void
.end method

.method private addEmptyUserProfileHeader(Landroid/view/LayoutInflater;)V
    .locals 7
    .parameter "inflater"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 262
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 266
    .local v0, list:Landroid/widget/ListView;
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeaderContainer:Landroid/widget/FrameLayout;

    .line 267
    const v2, 0x7f040090

    invoke-virtual {p1, v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeader:Landroid/view/View;

    .line 268
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeader:Landroid/view/View;

    const v3, 0x7f06012e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCounterHeaderView:Landroid/widget/TextView;

    .line 269
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeader:Landroid/view/View;

    const v3, 0x7f06012d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileTitle:Landroid/widget/TextView;

    .line 270
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 271
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeaderContainer:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeader:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 272
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeaderContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2, v4, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 275
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMessageContainer:Landroid/widget/FrameLayout;

    .line 276
    const v2, 0x7f04008f

    invoke-virtual {p1, v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileMessage:Landroid/widget/Button;

    .line 277
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMessageContainer:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileMessage:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 278
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMessageContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2, v4, v6}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 280
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileMessage:Landroid/widget/Button;

    new-instance v3, Lcom/android/contacts/list/DefaultContactBrowseListFragment$1;

    invoke-direct {v3, p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$1;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    const v2, 0x7f04001a

    invoke-virtual {p1, v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 290
    .local v1, paddingViewContainer:Landroid/view/View;
    const v2, 0x7f060071

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mPaddingView:Landroid/view/View;

    .line 291
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mPaddingView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 292
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 293
    return-void
.end method

.method private checkHeaderViewVisibility()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    .line 126
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCounterHeaderView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 127
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCounterHeaderView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->updateFilterHeaderView()V

    .line 132
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchHeaderView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 135
    :cond_1
    return-void

    .line 127
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showEmptyUserProfile(Z)V
    .locals 4
    .parameter "show"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 244
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeaderContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 245
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeader:Landroid/view/View;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 246
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCounterHeaderView:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 248
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMessageContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 249
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileMessage:Landroid/widget/Button;

    if-eqz p1, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mPaddingView:Landroid/view/View;

    if-eqz p1, :cond_6

    :goto_6
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 252
    return-void

    :cond_0
    move v0, v2

    .line 244
    goto :goto_0

    :cond_1
    move v0, v2

    .line 245
    goto :goto_1

    :cond_2
    move v0, v2

    .line 246
    goto :goto_2

    :cond_3
    move v0, v2

    .line 247
    goto :goto_3

    :cond_4
    move v0, v2

    .line 248
    goto :goto_4

    :cond_5
    move v0, v2

    .line 249
    goto :goto_5

    :cond_6
    move v2, v1

    .line 251
    goto :goto_6
.end method

.method private updateFilterHeaderView()V
    .locals 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 144
    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeader:Landroid/view/View;

    if-nez v4, :cond_0

    .line 155
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    .line 148
    .local v0, filter:Lcom/android/contacts/list/ContactListFilter;
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSearchMode()Z

    move-result v4

    if-nez v4, :cond_2

    .line 149
    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeader:Landroid/view/View;

    invoke-static {v4, v0, v2, v2}, Lcom/android/contacts/util/AccountFilterUtil;->updateAccountFilterTitleForPeople(Landroid/view/View;Lcom/android/contacts/list/ContactListFilter;ZZ)Z

    move-result v1

    .line 151
    .local v1, shouldShowHeader:Z
    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeader:Landroid/view/View;

    if-eqz v1, :cond_1

    :goto_1
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    .line 153
    .end local v1           #shouldShowHeader:Z
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeader:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public createCursorLoader()Landroid/content/CursorLoader;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Lcom/android/contacts/list/ProfileAndContactsLoader;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/ProfileAndContactsLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected bridge synthetic createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->createListAdapter()Lcom/android/contacts/list/ContactListAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected createListAdapter()Lcom/android/contacts/list/ContactListAdapter;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Lcom/android/contacts/list/DefaultContactListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 87
    .local v0, adapter:Lcom/android/contacts/list/DefaultContactListAdapter;
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 88
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->setDisplayPhotos(Z)V

    .line 89
    return-object v0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 94
    const v0, 0x7f040025

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 230
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 232
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/list/ContactListFilterController;->getInstance(Landroid/content/Context;)Lcom/android/contacts/list/ContactListFilterController;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/android/contacts/util/AccountFilterUtil;->handleAccountFilterResult(Lcom/android/contacts/list/ContactListFilterController;ILandroid/content/Intent;)V

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    sget-object v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->TAG:Ljava/lang/String;

    const-string v1, "getActivity() returns null during Fragment#onActivityResult()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 5
    .parameter "inflater"
    .parameter "container"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 99
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactBrowseListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f06001c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeader:Landroid/view/View;

    .line 102
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeader:Landroid/view/View;

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mFilterHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f06012e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCounterHeaderView:Landroid/widget/TextView;

    .line 107
    invoke-direct {p0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->addEmptyUserProfileHeader(Landroid/view/LayoutInflater;)V

    .line 108
    invoke-direct {p0, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showEmptyUserProfile(Z)V

    .line 112
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 113
    .local v0, headerContainer:Landroid/widget/FrameLayout;
    const v1, 0x7f040080

    invoke-virtual {p1, v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchHeaderView:Landroid/view/View;

    .line 114
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 115
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 116
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->checkHeaderViewVisibility()V

    .line 117
    return-void
.end method

.method protected onItemClick(IJ)V
    .locals 1
    .parameter "position"
    .parameter "id"

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->viewContact(Landroid/net/Uri;)V

    .line 82
    return-void
.end method

.method public setFilter(Lcom/android/contacts/list/ContactListFilter;)V
    .locals 0
    .parameter "filter"

    .prologue
    .line 139
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactBrowseListFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 140
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->updateFilterHeaderView()V

    .line 141
    return-void
.end method

.method protected setProfileHeader()V
    .locals 1

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListAdapter;->hasProfile()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mUserProfileExists:Z

    .line 225
    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mUserProfileExists:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSearchMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showEmptyUserProfile(Z)V

    .line 226
    return-void

    .line 225
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setSearchMode(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactBrowseListFragment;->setSearchMode(Z)V

    .line 122
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->checkHeaderViewVisibility()V

    .line 123
    return-void
.end method

.method protected showCount(ILandroid/database/Cursor;)V
    .locals 12
    .parameter "partitionIndex"
    .parameter "data"

    .prologue
    const/16 v10, 0x8

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 159
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSearchMode()Z

    move-result v7

    if-nez v7, :cond_5

    if-eqz p2, :cond_5

    .line 160
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 161
    .local v1, count:I
    if-eqz v1, :cond_3

    .line 162
    iget-boolean v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mUserProfileExists:Z

    if-eqz v7, :cond_1

    move v7, v8

    :goto_0
    sub-int/2addr v1, v7

    .line 163
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f0e0001

    invoke-virtual {v7, v10, v1}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 166
    .local v4, format:Ljava/lang/String;
    iget-boolean v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mUserProfileExists:Z

    if-eqz v7, :cond_2

    .line 167
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/list/ContactListAdapter;

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/contacts/list/ContactListAdapter;->setContactsCount(Ljava/lang/String;)V

    .line 220
    .end local v1           #count:I
    .end local v4           #format:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .restart local v1       #count:I
    :cond_1
    move v7, v9

    .line 162
    goto :goto_0

    .line 169
    .restart local v4       #format:Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCounterHeaderView:Landroid/widget/TextView;

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 172
    .end local v4           #format:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v2

    .line 173
    .local v2, filter:Lcom/android/contacts/list/ContactListFilter;
    if-eqz v2, :cond_4

    iget v3, v2, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    .line 175
    .local v3, filterType:I
    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 190
    :pswitch_0
    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCounterHeaderView:Landroid/widget/TextView;

    const v8, 0x7f0b005e

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 173
    .end local v3           #filterType:I
    :cond_4
    const/4 v3, -0x2

    goto :goto_2

    .line 177
    .restart local v3       #filterType:I
    :pswitch_1
    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCounterHeaderView:Landroid/widget/TextView;

    const v10, 0x7f0b0061

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v11, v2, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    aput-object v11, v8, v9

    invoke-virtual {p0, v10, v8}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 181
    :pswitch_2
    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCounterHeaderView:Landroid/widget/TextView;

    const v8, 0x7f0b005d

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 184
    :pswitch_3
    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCounterHeaderView:Landroid/widget/TextView;

    const v8, 0x7f0b0060

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 187
    :pswitch_4
    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCounterHeaderView:Landroid/widget/TextView;

    const v8, 0x7f0b005f

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 195
    .end local v1           #count:I
    .end local v2           #filter:Lcom/android/contacts/list/ContactListFilter;
    .end local v3           #filterType:I
    :cond_5
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    .line 196
    .local v0, adapter:Lcom/android/contacts/list/ContactListAdapter;
    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getQueryString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListAdapter;->areAllPartitionsEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    .line 202
    :cond_6
    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchHeaderView:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 218
    :goto_3
    invoke-direct {p0, v9}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showEmptyUserProfile(Z)V

    goto :goto_1

    .line 204
    :cond_7
    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchHeaderView:Landroid/view/View;

    const v8, 0x7f06011a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 206
    .local v6, textView:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchHeaderView:Landroid/view/View;

    const v8, 0x7f06009b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    .line 208
    .local v5, progress:Landroid/widget/ProgressBar;
    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchHeaderView:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 209
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListAdapter;->isLoading()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 210
    const v7, 0x7f0b017a

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 211
    invoke-virtual {v5, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_3

    .line 213
    :cond_8
    const v7, 0x7f0b0066

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 214
    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 215
    invoke-virtual {v5, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_3

    .line 175
    nop

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
