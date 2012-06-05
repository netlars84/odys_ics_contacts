.class public Lcom/android/contacts/list/PhoneFavoriteFragment;
.super Landroid/app/Fragment;
.source "PhoneFavoriteFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/PhoneFavoriteFragment$1;,
        Lcom/android/contacts/list/PhoneFavoriteFragment$ScrollListener;,
        Lcom/android/contacts/list/PhoneFavoriteFragment$ContactsPreferenceChangeListener;,
        Lcom/android/contacts/list/PhoneFavoriteFragment$FilterHeaderClickListener;,
        Lcom/android/contacts/list/PhoneFavoriteFragment$ContactTileAdapterListener;,
        Lcom/android/contacts/list/PhoneFavoriteFragment$AllContactsLoaderListener;,
        Lcom/android/contacts/list/PhoneFavoriteFragment$ContactTileLoaderListener;,
        Lcom/android/contacts/list/PhoneFavoriteFragment$Listener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final KEY_FILTER:Ljava/lang/String; = "filter"

.field private static LOADER_ID_ALL_CONTACTS:I = 0x0

.field private static LOADER_ID_CONTACT_TILE:I = 0x0

.field private static final REQUEST_CODE_ACCOUNT_FILTER:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccountFilterHeader:Landroid/view/View;

.field private mAccountFilterHeaderContainer:Landroid/widget/FrameLayout;

.field private mAdapter:Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;

.field private mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

.field private mAllContactsForceReload:Z

.field private final mAllContactsLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mAllContactsLoaderStarted:Z

.field private mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

.field private final mContactTileAdapterListener:Lcom/android/contacts/list/ContactTileAdapter$Listener;

.field private final mContactTileLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private final mContactsPreferenceChangeListener:Lcom/android/contacts/list/PhoneFavoriteFragment$ContactsPreferenceChangeListener;

.field private mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

.field private mEmptyView:Landroid/widget/TextView;

.field private mFilter:Lcom/android/contacts/list/ContactListFilter;

.field private final mFilterHeaderClickListener:Landroid/view/View$OnClickListener;

.field private mListView:Landroid/widget/ListView;

.field private mListener:Lcom/android/contacts/list/PhoneFavoriteFragment$Listener;

.field private final mScrollListener:Lcom/android/contacts/list/PhoneFavoriteFragment$ScrollListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/android/contacts/list/PhoneFavoriteFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/list/PhoneFavoriteFragment;->TAG:Ljava/lang/String;

    .line 63
    const/4 v0, 0x1

    sput v0, Lcom/android/contacts/list/PhoneFavoriteFragment;->LOADER_ID_CONTACT_TILE:I

    .line 64
    const/4 v0, 0x2

    sput v0, Lcom/android/contacts/list/PhoneFavoriteFragment;->LOADER_ID_ALL_CONTACTS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 207
    new-instance v0, Lcom/android/contacts/list/PhoneFavoriteFragment$ContactTileAdapterListener;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/list/PhoneFavoriteFragment$ContactTileAdapterListener;-><init>(Lcom/android/contacts/list/PhoneFavoriteFragment;Lcom/android/contacts/list/PhoneFavoriteFragment$1;)V

    iput-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactTileAdapterListener:Lcom/android/contacts/list/ContactTileAdapter$Listener;

    .line 209
    new-instance v0, Lcom/android/contacts/list/PhoneFavoriteFragment$ContactTileLoaderListener;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/list/PhoneFavoriteFragment$ContactTileLoaderListener;-><init>(Lcom/android/contacts/list/PhoneFavoriteFragment;Lcom/android/contacts/list/PhoneFavoriteFragment$1;)V

    iput-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactTileLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 211
    new-instance v0, Lcom/android/contacts/list/PhoneFavoriteFragment$AllContactsLoaderListener;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/list/PhoneFavoriteFragment$AllContactsLoaderListener;-><init>(Lcom/android/contacts/list/PhoneFavoriteFragment;Lcom/android/contacts/list/PhoneFavoriteFragment$1;)V

    iput-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 213
    new-instance v0, Lcom/android/contacts/list/PhoneFavoriteFragment$FilterHeaderClickListener;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/list/PhoneFavoriteFragment$FilterHeaderClickListener;-><init>(Lcom/android/contacts/list/PhoneFavoriteFragment;Lcom/android/contacts/list/PhoneFavoriteFragment$1;)V

    iput-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mFilterHeaderClickListener:Landroid/view/View$OnClickListener;

    .line 214
    new-instance v0, Lcom/android/contacts/list/PhoneFavoriteFragment$ContactsPreferenceChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/list/PhoneFavoriteFragment$ContactsPreferenceChangeListener;-><init>(Lcom/android/contacts/list/PhoneFavoriteFragment;Lcom/android/contacts/list/PhoneFavoriteFragment$1;)V

    iput-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactsPreferenceChangeListener:Lcom/android/contacts/list/PhoneFavoriteFragment$ContactsPreferenceChangeListener;

    .line 216
    new-instance v0, Lcom/android/contacts/list/PhoneFavoriteFragment$ScrollListener;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/list/PhoneFavoriteFragment$ScrollListener;-><init>(Lcom/android/contacts/list/PhoneFavoriteFragment;Lcom/android/contacts/list/PhoneFavoriteFragment$1;)V

    iput-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mScrollListener:Lcom/android/contacts/list/PhoneFavoriteFragment$ScrollListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/list/PhoneFavoriteFragment;)Lcom/android/contacts/list/ContactTileAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/list/PhoneFavoriteFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsForceReload:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/list/PhoneFavoriteFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/contacts/list/PhoneFavoriteFragment;->loadContactsPreferences()Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/android/contacts/list/PhoneFavoriteFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsForceReload:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/contacts/list/PhoneFavoriteFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/contacts/list/PhoneFavoriteFragment;->requestReloadAllContacts()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/contacts/list/PhoneFavoriteFragment;)Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAdapter:Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/contacts/list/PhoneFavoriteFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/list/PhoneFavoriteFragment;)Lcom/android/contacts/list/PhoneNumberListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 56
    sget v0, Lcom/android/contacts/list/PhoneFavoriteFragment;->LOADER_ID_ALL_CONTACTS:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/contacts/list/PhoneFavoriteFragment;)Landroid/app/LoaderManager$LoaderCallbacks;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/list/PhoneFavoriteFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsLoaderStarted:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/contacts/list/PhoneFavoriteFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsLoaderStarted:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/contacts/list/PhoneFavoriteFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/contacts/list/PhoneFavoriteFragment;->updateFilterHeaderView()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/contacts/list/PhoneFavoriteFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAccountFilterHeader:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/contacts/list/PhoneFavoriteFragment;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAccountFilterHeaderContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/contacts/list/PhoneFavoriteFragment;)Lcom/android/contacts/list/PhoneFavoriteFragment$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListener:Lcom/android/contacts/list/PhoneFavoriteFragment$Listener;

    return-object v0
.end method

.method private initAdapters(Landroid/content/Context;Landroid/view/LayoutInflater;)V
    .locals 6
    .parameter "context"
    .parameter "inflater"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 279
    new-instance v0, Lcom/android/contacts/list/ContactTileAdapter;

    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactTileAdapterListener:Lcom/android/contacts/list/ContactTileAdapter$Listener;

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneFavoriteFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sget-object v3, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->STREQUENT_PHONE_ONLY:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/contacts/list/ContactTileAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/list/ContactTileAdapter$Listener;ILcom/android/contacts/list/ContactTileAdapter$DisplayType;)V

    iput-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    .line 282
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-static {p1}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactTileAdapter;->setPhotoLoader(Lcom/android/contacts/ContactPhotoManager;)V

    .line 285
    new-instance v0, Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-direct {v0, p1}, Lcom/android/contacts/list/PhoneNumberListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    .line 286
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-virtual {v0, v5}, Lcom/android/contacts/list/PhoneNumberListAdapter;->setDisplayPhotos(Z)V

    .line 287
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-virtual {v0, v5}, Lcom/android/contacts/list/PhoneNumberListAdapter;->setQuickContactEnabled(Z)V

    .line 288
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-virtual {v0, v4}, Lcom/android/contacts/list/PhoneNumberListAdapter;->setSearchMode(Z)V

    .line 289
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-virtual {v0, v4}, Lcom/android/contacts/list/PhoneNumberListAdapter;->setIncludeProfile(Z)V

    .line 290
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-virtual {v0, v4}, Lcom/android/contacts/list/PhoneNumberListAdapter;->setSelectionVisible(Z)V

    .line 291
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-virtual {v0, v5}, Lcom/android/contacts/list/PhoneNumberListAdapter;->setDarkTheme(Z)V

    .line 292
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-static {p1}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/PhoneNumberListAdapter;->setPhotoLoader(Lcom/android/contacts/ContactPhotoManager;)V

    .line 294
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-virtual {v0, v4, v4}, Lcom/android/contacts/list/PhoneNumberListAdapter;->setHasHeader(IZ)V

    .line 296
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-virtual {v0, v5}, Lcom/android/contacts/list/PhoneNumberListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 298
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-virtual {v0, v4}, Lcom/android/contacts/list/PhoneNumberListAdapter;->setPinnedPartitionHeadersEnabled(Z)V

    .line 300
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    sget-object v1, Lcom/android/contacts/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/PhoneNumberListAdapter;->setPhotoPosition(Lcom/android/contacts/list/ContactListItemView$PhotoPosition;)V

    .line 302
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/PhoneNumberListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 307
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAccountFilterHeaderContainer:Landroid/widget/FrameLayout;

    .line 308
    const v0, 0x7f040001

    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p2, v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAccountFilterHeader:Landroid/view/View;

    .line 310
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAccountFilterHeader:Landroid/view/View;

    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mFilterHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAccountFilterHeaderContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAccountFilterHeader:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 312
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAccountFilterHeaderContainer:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 314
    new-instance v0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;

    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    iget-object v2, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAccountFilterHeaderContainer:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/list/ContactTileAdapter;Landroid/view/View;Lcom/android/contacts/list/ContactEntryListAdapter;)V

    iput-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAdapter:Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;

    .line 317
    return-void
.end method

.method private loadContactsPreferences()Z
    .locals 3

    .prologue
    .line 376
    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    if-nez v1, :cond_2

    .line 377
    :cond_0
    const/4 v0, 0x0

    .line 391
    :cond_1
    :goto_0
    return v0

    .line 380
    :cond_2
    const/4 v0, 0x0

    .line 381
    .local v0, changed:Z
    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/list/PhoneNumberListAdapter;->getContactNameDisplayOrder()I

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v2}, Lcom/android/contacts/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 382
    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    iget-object v2, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v2}, Lcom/android/contacts/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/PhoneNumberListAdapter;->setContactNameDisplayOrder(I)V

    .line 383
    const/4 v0, 0x1

    .line 386
    :cond_3
    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/list/PhoneNumberListAdapter;->getSortOrder()I

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v2}, Lcom/android/contacts/preference/ContactsPreferences;->getSortOrder()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 387
    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    iget-object v2, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v2}, Lcom/android/contacts/preference/ContactsPreferences;->getSortOrder()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/PhoneNumberListAdapter;->setSortOrder(I)V

    .line 388
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private requestReloadAllContacts()V
    .locals 4

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsLoaderStarted:Z

    if-nez v0, :cond_1

    .line 408
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsForceReload:Z

    .line 417
    :goto_0
    return-void

    .line 414
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/PhoneNumberListAdapter;->onDataReload()V

    .line 416
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneFavoriteFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    sget v1, Lcom/android/contacts/list/PhoneFavoriteFragment;->LOADER_ID_ALL_CONTACTS:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method

.method private updateFilterHeaderView()V
    .locals 4

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneFavoriteFragment;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    .line 421
    .local v0, filter:Lcom/android/contacts/list/ContactListFilter;
    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAccountFilterHeader:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAccountFilterHeader:Landroid/view/View;

    iget-object v2, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/list/PhoneNumberListAdapter;->isLoading()Z

    move-result v2

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/android/contacts/util/AccountFilterUtil;->updateAccountFilterTitleForPhone(Landroid/view/View;Lcom/android/contacts/list/ContactListFilter;ZZ)Z

    goto :goto_0
.end method


# virtual methods
.method public getFilter()Lcom/android/contacts/list/ContactListFilter;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 365
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 366
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneFavoriteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 367
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneFavoriteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/list/ContactListFilterController;->getInstance(Landroid/content/Context;)Lcom/android/contacts/list/ContactListFilterController;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/android/contacts/util/AccountFilterUtil;->handleAccountFilterResult(Lcom/android/contacts/list/ContactListFilterController;ILandroid/content/Intent;)V

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    sget-object v0, Lcom/android/contacts/list/PhoneFavoriteFragment;->TAG:Ljava/lang/String;

    const-string v1, "getActivity() returns null during Fragment#onActivityResult()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 234
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 236
    new-instance v0, Lcom/android/contacts/preference/ContactsPreferences;

    invoke-direct {v0, p1}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    .line 237
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedState"

    .prologue
    .line 220
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 221
    if-eqz p1, :cond_0

    .line 222
    const-string v0, "filter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListFilter;

    iput-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 224
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 242
    const v1, 0x7f04002d

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 244
    .local v0, listLayout:Landroid/view/View;
    const v1, 0x7f06008e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    .line 245
    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 246
    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 247
    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 248
    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVerticalScrollbarPosition(I)V

    .line 249
    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    const/high16 v2, 0x200

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 251
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneFavoriteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/contacts/list/PhoneFavoriteFragment;->initAdapters(Landroid/content/Context;Landroid/view/LayoutInflater;)V

    .line 253
    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAdapter:Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 255
    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mScrollListener:Lcom/android/contacts/list/PhoneFavoriteFragment$ScrollListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 256
    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 257
    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setFastScrollAlwaysVisible(Z)V

    .line 259
    const v1, 0x7f06008f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mEmptyView:Landroid/widget/TextView;

    .line 260
    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mEmptyView:Landroid/widget/TextView;

    const v2, 0x7f0b005e

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/PhoneFavoriteFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 263
    invoke-direct {p0}, Lcom/android/contacts/list/PhoneFavoriteFragment;->updateFilterHeaderView()V

    .line 265
    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 351
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactTileAdapter;->getCount()I

    move-result v0

    .line 352
    .local v0, contactTileAdapterCount:I
    if-gt p3, v0, :cond_1

    .line 353
    sget-object v2, Lcom/android/contacts/list/PhoneFavoriteFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onItemClick() event for unexpected position. The position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is before \"all\" section. Ignored."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactTileAdapter;->getCount()I

    move-result v2

    sub-int v2, p3, v2

    add-int/lit8 v1, v2, -0x1

    .line 357
    .local v1, localPosition:I
    iget-object v2, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListener:Lcom/android/contacts/list/PhoneFavoriteFragment$Listener;

    if-eqz v2, :cond_0

    .line 358
    iget-object v2, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListener:Lcom/android/contacts/list/PhoneFavoriteFragment$Listener;

    iget-object v3, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-virtual {v3, v1}, Lcom/android/contacts/list/PhoneNumberListAdapter;->getDataUri(I)Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/contacts/list/PhoneFavoriteFragment$Listener;->onContactSelected(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 228
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 229
    const-string v0, "filter"

    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 230
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 321
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 323
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactsPreferenceChangeListener:Lcom/android/contacts/list/PhoneFavoriteFragment$ContactsPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/preference/ContactsPreferences;->registerChangeListener(Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;)V

    .line 327
    invoke-direct {p0}, Lcom/android/contacts/list/PhoneFavoriteFragment;->loadContactsPreferences()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsForceReload:Z

    .line 334
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneFavoriteFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    sget v1, Lcom/android/contacts/list/PhoneFavoriteFragment;->LOADER_ID_CONTACT_TILE:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactTileLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 335
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 339
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 340
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/preference/ContactsPreferences;->unregisterChangeListener()V

    .line 341
    return-void
.end method

.method public setFilter(Lcom/android/contacts/list/ContactListFilter;)V
    .locals 2
    .parameter "filter"

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactListFilter;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 449
    :cond_1
    :goto_0
    return-void

    .line 442
    :cond_2
    iput-object p1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 444
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    if-eqz v0, :cond_1

    .line 445
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/PhoneNumberListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 446
    invoke-direct {p0}, Lcom/android/contacts/list/PhoneFavoriteFragment;->requestReloadAllContacts()V

    .line 447
    invoke-direct {p0}, Lcom/android/contacts/list/PhoneFavoriteFragment;->updateFilterHeaderView()V

    goto :goto_0
.end method

.method public setListener(Lcom/android/contacts/list/PhoneFavoriteFragment$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 452
    iput-object p1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListener:Lcom/android/contacts/list/PhoneFavoriteFragment$Listener;

    .line 453
    return-void
.end method
