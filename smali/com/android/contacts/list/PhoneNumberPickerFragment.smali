.class public Lcom/android/contacts/list/PhoneNumberPickerFragment;
.super Lcom/android/contacts/list/ContactEntryListFragment;
.source "PhoneNumberPickerFragment.java"

# interfaces
.implements Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/PhoneNumberPickerFragment$1;,
        Lcom/android/contacts/list/PhoneNumberPickerFragment$FilterHeaderClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/list/ContactEntryListAdapter;",
        ">;",
        "Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;"
    }
.end annotation


# static fields
.field private static final KEY_FILTER:Ljava/lang/String; = "filter"

.field private static final REQUEST_CODE_ACCOUNT_FILTER:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccountFilterHeader:Landroid/view/View;

.field private mFilter:Lcom/android/contacts/list/ContactListFilter;

.field private mFilterHeaderClickListener:Landroid/view/View$OnClickListener;

.field private mListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

.field private mLoaderStarted:Z

.field private mPaddingView:Landroid/view/View;

.field private mPhotoPosition:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

.field private mShortcutAction:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 70
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;-><init>()V

    .line 58
    sget-object v0, Lcom/android/contacts/list/ContactListItemView;->DEFAULT_PHOTO_POSITION:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    iput-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mPhotoPosition:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    .line 68
    new-instance v0, Lcom/android/contacts/list/PhoneNumberPickerFragment$FilterHeaderClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/list/PhoneNumberPickerFragment$FilterHeaderClickListener;-><init>(Lcom/android/contacts/list/PhoneNumberPickerFragment;Lcom/android/contacts/list/PhoneNumberPickerFragment$1;)V

    iput-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFilterHeaderClickListener:Landroid/view/View$OnClickListener;

    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setQuickContactEnabled(Z)V

    .line 72
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setPhotoLoaderEnabled(Z)V

    .line 73
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 74
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setDirectorySearchMode(I)V

    .line 77
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setHasOptionsMenu(Z)V

    .line 78
    return-void
.end method

.method private updateFilterHeaderView()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 106
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    .line 107
    .local v0, filter:Lcom/android/contacts/list/ContactListFilter;
    iget-object v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mAccountFilterHeader:Landroid/view/View;

    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mAccountFilterHeader:Landroid/view/View;

    invoke-static {v2, v0, v3, v3}, Lcom/android/contacts/util/AccountFilterUtil;->updateAccountFilterTitleForPhone(Landroid/view/View;Lcom/android/contacts/list/ContactListFilter;ZZ)Z

    move-result v1

    .line 112
    .local v1, shouldShowHeader:Z
    if-eqz v1, :cond_2

    .line 113
    iget-object v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mPaddingView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 114
    iget-object v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mAccountFilterHeader:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 116
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mPaddingView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 117
    iget-object v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mAccountFilterHeader:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected configureAdapter()V
    .locals 2

    .prologue
    .line 198
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureAdapter()V

    .line 200
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    .line 201
    .local v0, adapter:Lcom/android/contacts/list/ContactEntryListAdapter;
    if-nez v0, :cond_1

    .line 212
    .end local v0           #adapter:Lcom/android/contacts/list/ContactEntryListAdapter;
    :cond_0
    :goto_0
    return-void

    .line 205
    .restart local v0       #adapter:Lcom/android/contacts/list/ContactEntryListAdapter;
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-eqz v1, :cond_2

    .line 206
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 209
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 210
    check-cast v0, Lcom/android/contacts/list/PhoneNumberListAdapter;

    .end local v0           #adapter:Lcom/android/contacts/list/ContactEntryListAdapter;
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mPhotoPosition:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/PhoneNumberListAdapter;->setPhotoPosition(Lcom/android/contacts/list/ContactListItemView$PhotoPosition;)V

    goto :goto_0
.end method

.method protected createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 185
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 186
    new-instance v0, Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/PhoneNumberListAdapter;-><init>(Landroid/content/Context;)V

    .line 187
    .local v0, adapter:Lcom/android/contacts/list/PhoneNumberListAdapter;
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/PhoneNumberListAdapter;->setDisplayPhotos(Z)V

    .line 192
    .end local v0           #adapter:Lcom/android/contacts/list/PhoneNumberListAdapter;
    :goto_0
    return-object v0

    .line 190
    :cond_0
    new-instance v0, Lcom/android/contacts/list/LegacyPhoneNumberListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/LegacyPhoneNumberListAdapter;-><init>(Landroid/content/Context;)V

    .line 191
    .local v0, adapter:Lcom/android/contacts/list/LegacyPhoneNumberListAdapter;
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/LegacyPhoneNumberListAdapter;->setDisplayPhotos(Z)V

    goto :goto_0
.end method

.method public getFilter()Lcom/android/contacts/list/ContactListFilter;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    return-object v0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 216
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
    .line 242
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 244
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/list/ContactListFilterController;->getInstance(Landroid/content/Context;)Lcom/android/contacts/list/ContactListFilterController;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/android/contacts/util/AccountFilterUtil;->handleAccountFilterResult(Lcom/android/contacts/list/ContactListFilterController;ILandroid/content/Intent;)V

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    sget-object v0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->TAG:Ljava/lang/String;

    const-string v1, "getActivity() returns null during Fragment#onActivityResult()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 4
    .parameter "inflater"
    .parameter "container"

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 88
    const v2, 0x7f04001a

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 89
    .local v0, paddingView:Landroid/view/View;
    const v2, 0x7f060071

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mPaddingView:Landroid/view/View;

    .line 90
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f06001c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mAccountFilterHeader:Landroid/view/View;

    .line 93
    iget-object v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mAccountFilterHeader:Landroid/view/View;

    iget-object v3, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFilterHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    invoke-direct {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->updateFilterHeaderView()V

    .line 96
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setVisibleScrollbarEnabled(Z)V

    .line 97
    return-void
.end method

.method protected onItemClick(IJ)V
    .locals 5
    .parameter "position"
    .parameter "id"

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/PhoneNumberListAdapter;

    .line 163
    .local v0, adapter:Lcom/android/contacts/list/PhoneNumberListAdapter;
    invoke-virtual {v0, p1}, Lcom/android/contacts/list/PhoneNumberListAdapter;->getDataUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 170
    .end local v0           #adapter:Lcom/android/contacts/list/PhoneNumberListAdapter;
    .local v1, phoneUri:Landroid/net/Uri;
    :goto_0
    if-eqz v1, :cond_1

    .line 171
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->pickPhoneNumber(Landroid/net/Uri;)V

    .line 175
    :goto_1
    return-void

    .line 166
    .end local v1           #phoneUri:Landroid/net/Uri;
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/LegacyPhoneNumberListAdapter;

    .line 167
    .local v0, adapter:Lcom/android/contacts/list/LegacyPhoneNumberListAdapter;
    invoke-virtual {v0, p1}, Lcom/android/contacts/list/LegacyPhoneNumberListAdapter;->getPhoneUri(I)Landroid/net/Uri;

    move-result-object v1

    .restart local v1       #phoneUri:Landroid/net/Uri;
    goto :goto_0

    .line 173
    .end local v0           #adapter:Lcom/android/contacts/list/LegacyPhoneNumberListAdapter;
    :cond_1
    sget-object v2, Lcom/android/contacts/list/PhoneNumberPickerFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Item at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " was clicked before adapter is ready. Ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 140
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 141
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 142
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

    invoke-interface {v1}, Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;->onHomeInActionBarSelected()V

    .line 145
    :cond_0
    const/4 v1, 0x1

    .line 147
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPickerResult(Landroid/content/Intent;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;->onPickPhoneNumberAction(Landroid/net/Uri;)V

    .line 238
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 134
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 135
    const-string v0, "filter"

    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 136
    return-void
.end method

.method public onShortcutIntentCreated(Landroid/net/Uri;Landroid/content/Intent;)V
    .locals 1
    .parameter "uri"
    .parameter "shortcutIntent"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

    invoke-interface {v0, p2}, Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;->onShortcutIntentCreated(Landroid/content/Intent;)V

    .line 233
    return-void
.end method

.method public pickPhoneNumber(Landroid/net/Uri;)V
    .locals 2
    .parameter "uri"

    .prologue
    .line 220
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mShortcutAction:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 221
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

    invoke-interface {v1, p1}, Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;->onPickPhoneNumberAction(Landroid/net/Uri;)V

    .line 229
    :goto_0
    return-void

    .line 223
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 224
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 226
    :cond_1
    new-instance v0, Lcom/android/contacts/list/ShortcutIntentBuilder;

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/contacts/list/ShortcutIntentBuilder;-><init>(Landroid/content/Context;Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;)V

    .line 227
    .local v0, builder:Lcom/android/contacts/list/ShortcutIntentBuilder;
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mShortcutAction:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/android/contacts/list/ShortcutIntentBuilder;->createPhoneNumberShortcutIntent(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedState"

    .prologue
    .line 123
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    .line 125
    if-nez p1, :cond_0

    .line 130
    :goto_0
    return-void

    .line 129
    :cond_0
    const-string v0, "filter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListFilter;

    iput-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    goto :goto_0
.end method

.method public setFilter(Lcom/android/contacts/list/ContactListFilter;)V
    .locals 1
    .parameter "filter"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactListFilter;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 267
    :cond_1
    :goto_0
    return-void

    .line 262
    :cond_2
    iput-object p1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 263
    iget-boolean v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mLoaderStarted:Z

    if-eqz v0, :cond_3

    .line 264
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->reloadData()V

    .line 266
    :cond_3
    invoke-direct {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->updateFilterHeaderView()V

    goto :goto_0
.end method

.method public setOnPhoneNumberPickerActionListener(Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

    .line 82
    return-void
.end method

.method public setPhotoPosition(Lcom/android/contacts/list/ContactListItemView$PhotoPosition;)V
    .locals 3
    .parameter "photoPosition"

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mPhotoPosition:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    .line 271
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 272
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/PhoneNumberListAdapter;

    .line 273
    .local v0, adapter:Lcom/android/contacts/list/PhoneNumberListAdapter;
    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {v0, p1}, Lcom/android/contacts/list/PhoneNumberListAdapter;->setPhotoPosition(Lcom/android/contacts/list/ContactListItemView$PhotoPosition;)V

    .line 279
    .end local v0           #adapter:Lcom/android/contacts/list/PhoneNumberListAdapter;
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    sget-object v1, Lcom/android/contacts/list/PhoneNumberPickerFragment;->TAG:Ljava/lang/String;

    const-string v2, "setPhotoPosition() is ignored in legacy compatibility mode."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected setSearchMode(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->setSearchMode(Z)V

    .line 102
    invoke-direct {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->updateFilterHeaderView()V

    .line 103
    return-void
.end method

.method public setShortcutAction(Ljava/lang/String;)V
    .locals 0
    .parameter "shortcutAction"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mShortcutAction:Ljava/lang/String;

    .line 156
    return-void
.end method

.method protected startLoading()V
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mLoaderStarted:Z

    .line 180
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->startLoading()V

    .line 181
    return-void
.end method
