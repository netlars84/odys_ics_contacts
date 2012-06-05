.class public abstract Lcom/android/contacts/list/ContactEntryListFragment;
.super Landroid/app/Fragment;
.source "ContactEntryListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/contacts/list/ContactEntryListAdapter;",
        ">",
        "Landroid/app/Fragment;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AbsListView$OnScrollListener;",
        "Landroid/view/View$OnFocusChangeListener;",
        "Landroid/view/View$OnTouchListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field public static final ACTIVITY_REQUEST_CODE_PICKER:I = 0x1

.field private static final DEFAULT_DIRECTORY_RESULT_LIMIT:I = 0x14

.field private static final DIRECTORY_ID_ARG_KEY:Ljava/lang/String; = "directoryId"

.field private static final DIRECTORY_LOADER_ID:I = -0x1

.field private static final DIRECTORY_SEARCH_DELAY_MILLIS:I = 0x12c

.field private static final DIRECTORY_SEARCH_MESSAGE:I = 0x1

.field private static final KEY_DARK_THEME:Ljava/lang/String; = "darkTheme"

.field private static final KEY_DIRECTORY_RESULT_LIMIT:Ljava/lang/String; = "directoryResultLimit"

.field private static final KEY_DIRECTORY_SEARCH_MODE:Ljava/lang/String; = "directorySearchMode"

.field private static final KEY_INCLUDE_PROFILE:Ljava/lang/String; = "includeProfile"

.field private static final KEY_LEGACY_COMPATIBILITY:Ljava/lang/String; = "legacyCompatibility"

.field private static final KEY_LIST_STATE:Ljava/lang/String; = "liststate"

.field private static final KEY_PHOTO_LOADER_ENABLED:Ljava/lang/String; = "photoLoaderEnabled"

.field private static final KEY_QUERY_STRING:Ljava/lang/String; = "queryString"

.field private static final KEY_QUICK_CONTACT_ENABLED:Ljava/lang/String; = "quickContactEnabled"

.field private static final KEY_REQUEST:Ljava/lang/String; = "request"

.field private static final KEY_SCROLLBAR_POSITION:Ljava/lang/String; = "scrollbarPosition"

.field private static final KEY_SEARCH_MODE:Ljava/lang/String; = "searchMode"

.field private static final KEY_SECTION_HEADER_DISPLAY_ENABLED:Ljava/lang/String; = "sectionHeaderDisplayEnabled"

.field private static final KEY_SELECTION_VISIBLE:Ljava/lang/String; = "selectionVisible"

.field private static final KEY_VISIBLE_SCROLLBAR_ENABLED:Ljava/lang/String; = "visibleScrollbarEnabled"

.field private static final STATUS_LOADED:I = 0x2

.field private static final STATUS_LOADING:I = 0x1

.field private static final STATUS_NOT_LOADED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ContactEntryListFragment"


# instance fields
.field private mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

.field private mContext:Landroid/content/Context;

.field private mContextMenuAdapter:Lcom/android/contacts/widget/ContextMenuAdapter;

.field private mDarkTheme:Z

.field private mDelayedDirectorySearchHandler:Landroid/os/Handler;

.field private mDirectoryListStatus:I

.field private mDirectoryResultLimit:I

.field private mDirectorySearchMode:I

.field private mDisplayOrder:I

.field private mEmptyView:Lcom/android/contacts/ContactListEmptyView;

.field private mEnabled:Z

.field private mForceLoad:Z

.field private mIncludeProfile:Z

.field private mLegacyCompatibility:Z

.field private mListState:Landroid/os/Parcelable;

.field private mListView:Landroid/widget/ListView;

.field private mLoadPriorityDirectoriesOnly:Z

.field private mLoaderManager:Landroid/app/LoaderManager;

.field private mPhotoLoaderEnabled:Z

.field private mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

.field private mPreferencesChangeListener:Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;

.field private mProviderStatusLoader:Lcom/android/contacts/list/ProviderStatusLoader;

.field private mQueryString:Ljava/lang/String;

.field private mQuickContactEnabled:Z

.field private mSearchMode:Z

.field private mSectionHeaderDisplayEnabled:Z

.field private mSelectionVisible:Z

.field private mSortOrder:I

.field protected mUserProfileExists:Z

.field private mVerticalScrollbarPosition:I

.field private mView:Landroid/view/View;

.field private mVisibleScrollbarEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 103
    iput-boolean v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQuickContactEnabled:Z

    .line 107
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    .line 109
    iput v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectorySearchMode:I

    .line 113
    iput-boolean v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mEnabled:Z

    .line 126
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    .line 144
    iput v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryListStatus:I

    .line 156
    new-instance v0, Lcom/android/contacts/list/ContactEntryListFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactEntryListFragment$1;-><init>(Lcom/android/contacts/list/ContactEntryListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    .line 932
    new-instance v0, Lcom/android/contacts/list/ContactEntryListFragment$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactEntryListFragment$2;-><init>(Lcom/android/contacts/list/ContactEntryListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPreferencesChangeListener:Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;

    return-void
.end method

.method private configureVerticalScrollbar()V
    .locals 7

    .prologue
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const v6, 0x7f08001f

    const/4 v3, 0x1

    .line 541
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isVisibleScrollbarEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSectionHeaderDisplayEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v3

    .line 543
    .local v0, hasScrollbar:Z
    :goto_0
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_0

    .line 544
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 545
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setFastScrollAlwaysVisible(Z)V

    .line 546
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    iget v5, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setVerticalScrollbarPosition(I)V

    .line 547
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    const/high16 v5, 0x200

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 548
    const/4 v1, 0x0

    .line 549
    .local v1, leftPadding:I
    const/4 v2, 0x0

    .line 550
    .local v2, rightPadding:I
    iget v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    if-ne v4, v3, :cond_2

    .line 551
    iget-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 557
    :goto_1
    iget-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v3, v1, v4, v2, v5}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 560
    .end local v1           #leftPadding:I
    .end local v2           #rightPadding:I
    :cond_0
    return-void

    .line 541
    .end local v0           #hasScrollbar:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 554
    .restart local v0       #hasScrollbar:Z
    .restart local v1       #leftPadding:I
    .restart local v2       #rightPadding:I
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    goto :goto_1
.end method

.method private hideSoftKeyboard()V
    .locals 3

    .prologue
    .line 840
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 842
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 843
    return-void
.end method

.method private loadDirectoryPartitionDelayed(ILcom/android/contacts/list/DirectoryPartition;)V
    .locals 4
    .parameter "partitionIndex"
    .parameter "partition"

    .prologue
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v3, 0x1

    .line 375
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 376
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 378
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 379
    return-void
.end method

.method private removePendingDirectorySearchRequests()V
    .locals 2

    .prologue
    .line 394
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 395
    return-void
.end method

.method private startLoadingDirectoryPartition(I)V
    .locals 6
    .parameter "partitionIndex"

    .prologue
    .line 353
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v4, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/list/DirectoryPartition;

    .line 354
    .local v3, partition:Lcom/android/contacts/list/DirectoryPartition;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/DirectoryPartition;->setStatus(I)V

    .line 355
    invoke-virtual {v3}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v1

    .line 356
    .local v1, directoryId:J
    iget-boolean v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mForceLoad:Z

    if-eqz v4, :cond_1

    .line 357
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_0

    .line 358
    invoke-virtual {p0, p1, v3}, Lcom/android/contacts/list/ContactEntryListFragment;->loadDirectoryPartition(ILcom/android/contacts/list/DirectoryPartition;)V

    .line 367
    :goto_0
    return-void

    .line 360
    :cond_0
    invoke-direct {p0, p1, v3}, Lcom/android/contacts/list/ContactEntryListFragment;->loadDirectoryPartitionDelayed(ILcom/android/contacts/list/DirectoryPartition;)V

    goto :goto_0

    .line 363
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 364
    .local v0, args:Landroid/os/Bundle;
    const-string v4, "directoryId"

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 365
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    invoke-virtual {v4, p1, v0, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method


# virtual methods
.method protected completeRestoreInstanceState()V
    .locals 2

    .prologue
    .line 884
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    .line 885
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 886
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListState:Landroid/os/Parcelable;

    .line 888
    :cond_0
    return-void
.end method

.method protected configureAdapter()V
    .locals 2

    .prologue
    .line 797
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-nez v0, :cond_0

    .line 812
    :goto_0
    return-void

    .line 801
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQuickContactEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setQuickContactEnabled(Z)V

    .line 802
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mIncludeProfile:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setIncludeProfile(Z)V

    .line 803
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setQueryString(Ljava/lang/String;)V

    .line 804
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectorySearchMode:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setDirectorySearchMode(I)V

    .line 805
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSearchMode:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setPinnedPartitionHeadersEnabled(Z)V

    .line 806
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDisplayOrder:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setContactNameDisplayOrder(I)V

    .line 807
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSortOrder:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setSortOrder(I)V

    .line 808
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 809
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSelectionVisible:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setSelectionVisible(Z)V

    .line 810
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setDirectoryResultLimit(I)V

    .line 811
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDarkTheme:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setDarkTheme(Z)V

    goto :goto_0
.end method

.method protected configurePhotoLoader()V
    .locals 2

    .prologue
    .line 783
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isPhotoLoaderEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 784
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    if-nez v0, :cond_0

    .line 785
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    .line 787
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 788
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 790
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v0, :cond_2

    .line 791
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setPhotoLoader(Lcom/android/contacts/ContactPhotoManager;)V

    .line 794
    :cond_2
    return-void
.end method

.method public createCursorLoader()Landroid/content/CursorLoader;
    .locals 7

    .prologue
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v2, 0x0

    .line 349
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected abstract createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected finish()V
    .locals 0

    .prologue
    .line 506
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    return-void
.end method

.method public getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 220
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    return-object v0
.end method

.method protected getContactNameDisplayOrder()I
    .locals 1

    .prologue
    .line 672
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDisplayOrder:I

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 191
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getContextMenuAdapter()Lcom/android/contacts/widget/ContextMenuAdapter;
    .locals 1

    .prologue
    .line 705
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContextMenuAdapter:Lcom/android/contacts/widget/ContextMenuAdapter;

    return-object v0
.end method

.method public getDirectorySearchMode()I
    .locals 1

    .prologue
    .line 656
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectorySearchMode:I

    return v0
.end method

.method public getEmptyView()Lcom/android/contacts/ContactListEmptyView;
    .locals 1

    .prologue
    .line 233
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mEmptyView:Lcom/android/contacts/ContactListEmptyView;

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 229
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getLoaderManager()Landroid/app/LoaderManager;
    .locals 1

    .prologue
    .line 216
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLoaderManager:Landroid/app/LoaderManager;

    return-object v0
.end method

.method public final getQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 637
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    return-object v0
.end method

.method public getSortOrder()I
    .locals 1

    .prologue
    .line 683
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSortOrder:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 225
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method protected hasIccCard()Z
    .locals 3

    .prologue
    .line 915
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 917
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v1

    return v1
.end method

.method protected abstract inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public isLegacyCompatibilityMode()Z
    .locals 1

    .prologue
    .line 664
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLegacyCompatibility:Z

    return v0
.end method

.method public isLoading()Z
    .locals 2

    .prologue
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v0, 0x1

    .line 447
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 455
    :cond_0
    :goto_0
    return v0

    .line 451
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isLoadingDirectoryList()Z

    move-result v1

    if-nez v1, :cond_0

    .line 455
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoadingDirectoryList()Z
    .locals 2

    .prologue
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v0, 0x1

    .line 459
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getDirectorySearchMode()I

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryListStatus:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryListStatus:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPhotoLoaderEnabled()Z
    .locals 1

    .prologue
    .line 568
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoLoaderEnabled:Z

    return v0
.end method

.method public final isSearchMode()Z
    .locals 1

    .prologue
    .line 633
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSearchMode:Z

    return v0
.end method

.method public isSectionHeaderDisplayEnabled()Z
    .locals 1

    .prologue
    .line 519
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    return v0
.end method

.method public isSelectionVisible()Z
    .locals 1

    .prologue
    .line 575
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSelectionVisible:Z

    return v0
.end method

.method protected isSyncActive()Z
    .locals 9

    .prologue
    .line 898
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v7, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 899
    .local v1, accounts:[Landroid/accounts/Account;
    if-eqz v1, :cond_1

    array-length v7, v1

    if-lez v7, :cond_1

    .line 900
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v3

    .line 901
    .local v3, contentService:Landroid/content/IContentService;
    move-object v2, v1

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v6, v2

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v0, v2, v5

    .line 903
    .local v0, account:Landroid/accounts/Account;
    :try_start_0
    const-string v7, "com.android.contacts"

    invoke-interface {v3, v0, v7}, Landroid/content/IContentService;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_0

    .line 904
    const/4 v7, 0x1

    .line 911
    .end local v0           #account:Landroid/accounts/Account;
    .end local v2           #arr$:[Landroid/accounts/Account;
    .end local v3           #contentService:Landroid/content/IContentService;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :goto_1
    return v7

    .line 906
    .restart local v0       #account:Landroid/accounts/Account;
    .restart local v2       #arr$:[Landroid/accounts/Account;
    .restart local v3       #contentService:Landroid/content/IContentService;
    .restart local v5       #i$:I
    .restart local v6       #len$:I
    :catch_0
    move-exception v4

    .line 907
    .local v4, e:Landroid/os/RemoteException;
    const-string v7, "ContactEntryListFragment"

    const-string v8, "Could not get the sync status"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    .end local v4           #e:Landroid/os/RemoteException;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 911
    .end local v0           #account:Landroid/accounts/Account;
    .end local v2           #arr$:[Landroid/accounts/Account;
    .end local v3           #contentService:Landroid/content/IContentService;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_1
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public isVisibleScrollbarEnabled()Z
    .locals 1

    .prologue
    .line 530
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVisibleScrollbarEnabled:Z

    return v0
.end method

.method protected loadDirectoryPartition(ILcom/android/contacts/list/DirectoryPartition;)V
    .locals 4
    .parameter "partitionIndex"
    .parameter "partition"

    .prologue
    .line 385
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 386
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "directoryId"

    invoke-virtual {p2}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 387
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 388
    return-void
.end method

.method protected loadPreferences()Z
    .locals 3

    .prologue
    .line 709
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v0, 0x0

    .line 710
    .local v0, changed:Z
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContactNameDisplayOrder()I

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v2}, Lcom/android/contacts/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 711
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v1}, Lcom/android/contacts/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->setContactNameDisplayOrder(I)V

    .line 712
    const/4 v0, 0x1

    .line 715
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getSortOrder()I

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v2}, Lcom/android/contacts/preference/ContactsPreferences;->getSortOrder()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 716
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v1}, Lcom/android/contacts/preference/ContactsPreferences;->getSortOrder()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->setSortOrder(I)V

    .line 717
    const/4 v0, 0x1

    .line 720
    :cond_1
    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 177
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 178
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->setContext(Landroid/content/Context;)V

    .line 179
    invoke-super {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListFragment;->setLoaderManager(Landroid/app/LoaderManager;)V

    .line 180
    return-void
.end method

.method public onClose()V
    .locals 0

    .prologue
    .line 876
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->hideSoftKeyboard()V

    .line 877
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->finish()V

    .line 878
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedState"

    .prologue
    .line 260
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 261
    new-instance v0, Lcom/android/contacts/preference/ContactsPreferences;

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    .line 262
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    .line 263
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 4
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 334
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    .line 335
    new-instance v2, Lcom/android/contacts/list/DirectoryListLoader;

    iget-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/contacts/list/DirectoryListLoader;-><init>(Landroid/content/Context;)V

    .line 336
    .local v2, loader:Lcom/android/contacts/list/DirectoryListLoader;
    iget-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v3, v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->configureDirectoryLoader(Lcom/android/contacts/list/DirectoryListLoader;)V

    .line 344
    .end local v2           #loader:Lcom/android/contacts/list/DirectoryListLoader;
    :goto_0
    return-object v2

    .line 339
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->createCursorLoader()Landroid/content/CursorLoader;

    move-result-object v2

    .line 340
    .local v2, loader:Landroid/content/CursorLoader;
    if-eqz p2, :cond_1

    const-string v3, "directoryId"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "directoryId"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 343
    .local v0, directoryId:J
    :goto_1
    iget-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v3, v2, v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->configureLoader(Landroid/content/CursorLoader;J)V

    goto :goto_0

    .line 340
    .end local v0           #directoryId:J
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 726
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 728
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    .line 730
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v0

    .line 731
    .local v0, searchMode:Z
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->setSearchMode(Z)V

    .line 732
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->configureDefaultPartition(ZZ)V

    .line 733
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->setPhotoLoader(Lcom/android/contacts/ContactPhotoManager;)V

    .line 734
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 736
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 737
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 738
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->requestFocus()Z

    .line 741
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mView:Landroid/view/View;

    return-object v1
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 4
    .parameter "inflater"
    .parameter "container"

    .prologue
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v2, 0x0

    .line 745
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mView:Landroid/view/View;

    .line 747
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mView:Landroid/view/View;

    const v3, 0x102000a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    .line 748
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-nez v1, :cond_0

    .line 749
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 754
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mView:Landroid/view/View;

    const v3, 0x1020004

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 755
    .local v0, emptyView:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 756
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 757
    instance-of v1, v0, Lcom/android/contacts/ContactListEmptyView;

    if-eqz v1, :cond_1

    .line 758
    check-cast v0, Lcom/android/contacts/ContactListEmptyView;

    .end local v0           #emptyView:Landroid/view/View;
    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mEmptyView:Lcom/android/contacts/ContactListEmptyView;

    .line 762
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 763
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 764
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 765
    iget-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 769
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 772
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    .line 774
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContextMenuAdapter:Lcom/android/contacts/widget/ContextMenuAdapter;

    if-eqz v1, :cond_2

    .line 775
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContextMenuAdapter:Lcom/android/contacts/widget/ContextMenuAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 778
    :cond_2
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureVerticalScrollbar()V

    .line 779
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configurePhotoLoader()V

    .line 780
    return-void

    :cond_3
    move v1, v2

    .line 765
    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter "view"
    .parameter "hasFocus"

    .prologue
    .line 850
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 851
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->hideSoftKeyboard()V

    .line 853
    :cond_0
    return-void
.end method

.method protected abstract onItemClick(IJ)V
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 830
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->hideSoftKeyboard()V

    .line 832
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v0, p3, v1

    .line 833
    .local v0, adjPosition:I
    if-ltz v0, :cond_0

    .line 834
    invoke-virtual {p0, v0, p4, p5}, Lcom/android/contacts/list/ContactEntryListFragment;->onItemClick(IJ)V

    .line 836
    :cond_0
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 5
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v4, -0x1

    .line 399
    iget-boolean v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mEnabled:Z

    if-nez v2, :cond_1

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 403
    :cond_1
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    .line 404
    .local v1, loaderId:I
    if-ne v1, v4, :cond_2

    .line 405
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryListStatus:I

    .line 406
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v2, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->changeDirectories(Landroid/database/Cursor;)V

    .line 407
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->startLoading()V

    goto :goto_0

    .line 409
    :cond_2
    invoke-virtual {p0, v1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onPartitionLoaded(ILandroid/database/Cursor;)V

    .line 410
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 411
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getDirectorySearchMode()I

    move-result v0

    .line 412
    .local v0, directorySearchMode:I
    if-eqz v0, :cond_0

    .line 413
    iget v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryListStatus:I

    if-nez v2, :cond_3

    .line 414
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryListStatus:I

    .line 415
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v3, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    .line 417
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->startLoading()V

    goto :goto_0

    .line 421
    .end local v0           #directorySearchMode:I
    :cond_4
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryListStatus:I

    .line 422
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/LoaderManager;->destroyLoader(I)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 428
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method protected onPartitionLoaded(ILandroid/database/Cursor;)V
    .locals 1
    .parameter "partitionIndex"
    .parameter "data"

    .prologue
    .line 431
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 438
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->setProfileHeader()V

    .line 439
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->showCount(ILandroid/database/Cursor;)V

    .line 441
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    .line 442
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->completeRestoreInstanceState()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 868
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 869
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->removePendingDirectorySearchRequests()V

    .line 870
    return-void
.end method

.method public onPickerResult(Landroid/content/Intent;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 929
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Picker result handler is not implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 238
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 239
    const-string v0, "sectionHeaderDisplayEnabled"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 240
    const-string v0, "photoLoaderEnabled"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoLoaderEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 241
    const-string v0, "quickContactEnabled"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQuickContactEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 242
    const-string v0, "includeProfile"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mIncludeProfile:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 243
    const-string v0, "searchMode"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSearchMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 244
    const-string v0, "visibleScrollbarEnabled"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVisibleScrollbarEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 245
    const-string v0, "scrollbarPosition"

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 246
    const-string v0, "directorySearchMode"

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectorySearchMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 247
    const-string v0, "selectionVisible"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSelectionVisible:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 248
    const-string v0, "legacyCompatibility"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLegacyCompatibility:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 249
    const-string v0, "queryString"

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v0, "directoryResultLimit"

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 251
    const-string v0, "darkTheme"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDarkTheme:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 253
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 254
    const-string v0, "liststate"

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 256
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 817
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 821
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 822
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/ContactPhotoManager;->pause()V

    .line 826
    :cond_0
    :goto_0
    return-void

    .line 823
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isPhotoLoaderEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/ContactPhotoManager;->resume()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 290
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 292
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPreferencesChangeListener:Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/preference/ContactsPreferences;->registerChangeListener(Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;)V

    .line 294
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mProviderStatusLoader:Lcom/android/contacts/list/ProviderStatusLoader;

    if-nez v0, :cond_0

    .line 295
    new-instance v0, Lcom/android/contacts/list/ProviderStatusLoader;

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/contacts/list/ProviderStatusLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mProviderStatusLoader:Lcom/android/contacts/list/ProviderStatusLoader;

    .line 298
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->loadPreferences()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mForceLoad:Z

    .line 300
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryListStatus:I

    .line 301
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLoadPriorityDirectoriesOnly:Z

    .line 303
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->startLoading()V

    .line 304
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 466
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 467
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/preference/ContactsPreferences;->unregisterChangeListener()V

    .line 468
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->clearPartitions()V

    .line 469
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "event"

    .prologue
    .line 860
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-ne p1, v0, :cond_0

    .line 861
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->hideSoftKeyboard()V

    .line 863
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected prepareEmptyView()V
    .locals 0

    .prologue
    .line 484
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    return-void
.end method

.method protected reloadData()V
    .locals 2

    .prologue
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v1, 0x1

    .line 472
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->removePendingDirectorySearchRequests()V

    .line 473
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->onDataReload()V

    .line 474
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLoadPriorityDirectoriesOnly:Z

    .line 475
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mForceLoad:Z

    .line 476
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->startLoading()V

    .line 477
    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedState"

    .prologue
    .line 266
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    if-nez p1, :cond_0

    .line 286
    :goto_0
    return-void

    .line 270
    :cond_0
    const-string v0, "sectionHeaderDisplayEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    .line 271
    const-string v0, "photoLoaderEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoLoaderEnabled:Z

    .line 272
    const-string v0, "quickContactEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQuickContactEnabled:Z

    .line 273
    const-string v0, "includeProfile"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mIncludeProfile:Z

    .line 274
    const-string v0, "searchMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSearchMode:Z

    .line 275
    const-string v0, "visibleScrollbarEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVisibleScrollbarEnabled:Z

    .line 276
    const-string v0, "scrollbarPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    .line 277
    const-string v0, "directorySearchMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectorySearchMode:I

    .line 278
    const-string v0, "selectionVisible"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSelectionVisible:Z

    .line 279
    const-string v0, "legacyCompatibility"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLegacyCompatibility:Z

    .line 280
    const-string v0, "queryString"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    .line 281
    const-string v0, "directoryResultLimit"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    .line 282
    const-string v0, "darkTheme"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDarkTheme:Z

    .line 285
    const-string v0, "liststate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListState:Landroid/os/Parcelable;

    goto :goto_0
.end method

.method protected setContactNameDisplayOrder(I)V
    .locals 1
    .parameter "displayOrder"

    .prologue
    .line 676
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDisplayOrder:I

    .line 677
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setContactNameDisplayOrder(I)V

    .line 680
    :cond_0
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 186
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    .line 187
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configurePhotoLoader()V

    .line 188
    return-void
.end method

.method public setContextMenuAdapter(Lcom/android/contacts/widget/ContextMenuAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 698
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContextMenuAdapter:Lcom/android/contacts/widget/ContextMenuAdapter;

    .line 699
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 702
    :cond_0
    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 921
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDarkTheme:Z

    .line 922
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setDarkTheme(Z)V

    .line 923
    :cond_0
    return-void
.end method

.method public setDirectoryResultLimit(I)V
    .locals 0
    .parameter "limit"

    .prologue
    .line 694
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    .line 695
    return-void
.end method

.method public setDirectorySearchMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 660
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectorySearchMode:I

    .line 661
    return-void
.end method

.method protected setEmptyText(I)V
    .locals 3
    .parameter "resourceId"

    .prologue
    .line 891
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getEmptyView()Lcom/android/contacts/ContactListEmptyView;

    move-result-object v1

    const v2, 0x7f060064

    invoke-virtual {v1, v2}, Lcom/android/contacts/ContactListEmptyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 892
    .local v0, empty:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 893
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 894
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 195
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 196
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mEnabled:Z

    .line 197
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    .line 198
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mEnabled:Z

    if-eqz v0, :cond_1

    .line 199
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->reloadData()V

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->clearPartitions()V

    goto :goto_0
.end method

.method public setIncludeProfile(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 587
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mIncludeProfile:Z

    .line 588
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setIncludeProfile(Z)V

    .line 591
    :cond_0
    return-void
.end method

.method public setLegacyCompatibilityMode(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 668
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLegacyCompatibility:Z

    .line 669
    return-void
.end method

.method public setLoaderManager(Landroid/app/LoaderManager;)V
    .locals 0
    .parameter "loaderManager"

    .prologue
    .line 211
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLoaderManager:Landroid/app/LoaderManager;

    .line 212
    return-void
.end method

.method public setPhotoLoaderEnabled(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 563
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoLoaderEnabled:Z

    .line 564
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configurePhotoLoader()V

    .line 565
    return-void
.end method

.method protected setProfileHeader()V
    .locals 1

    .prologue
    .line 498
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mUserProfileExists:Z

    .line 499
    return-void
.end method

.method public setQueryString(Ljava/lang/String;Z)V
    .locals 1
    .parameter "queryString"
    .parameter "delaySelection"

    .prologue
    .line 642
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 645
    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    .line 646
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListFragment;->setSearchMode(Z)V

    .line 648
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v0, :cond_1

    .line 649
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setQueryString(Ljava/lang/String;)V

    .line 650
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->reloadData()V

    .line 653
    :cond_1
    return-void

    .line 646
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setQuickContactEnabled(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 583
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQuickContactEnabled:Z

    .line 584
    return-void
.end method

.method protected setSearchMode(Z)V
    .locals 6
    .parameter "flag"

    .prologue
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 601
    iget-boolean v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSearchMode:Z

    if-eq v2, p1, :cond_4

    .line 602
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSearchMode:Z

    .line 603
    iget-boolean v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSearchMode:Z

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactEntryListFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 605
    if-nez p1, :cond_0

    .line 606
    iput v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryListStatus:I

    .line 607
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v5, -0x1

    invoke-virtual {v2, v5}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 610
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v2, :cond_3

    .line 611
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v2, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setPinnedPartitionHeadersEnabled(Z)V

    .line 612
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v2, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setSearchMode(Z)V

    .line 614
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->clearPartitions()V

    .line 615
    if-nez p1, :cond_2

    .line 618
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    .line 619
    .local v0, count:I
    move v1, v0

    .local v1, i:I
    :goto_1
    add-int/lit8 v1, v1, -0x1

    if-lt v1, v3, :cond_2

    .line 620
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v2, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->removePartition(I)V

    goto :goto_1

    .end local v0           #count:I
    .end local v1           #i:I
    :cond_1
    move v2, v4

    .line 603
    goto :goto_0

    .line 623
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v2, v4, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->configureDefaultPartition(ZZ)V

    .line 626
    :cond_3
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v2, :cond_4

    .line 627
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-nez p1, :cond_5

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 630
    :cond_4
    return-void

    :cond_5
    move v3, v4

    .line 627
    goto :goto_2
.end method

.method public setSectionHeaderDisplayEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 509
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    if-eq v0, p1, :cond_1

    .line 510
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    .line 511
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 514
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureVerticalScrollbar()V

    .line 516
    :cond_1
    return-void
.end method

.method public setSelectionVisible(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 579
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSelectionVisible:Z

    .line 580
    return-void
.end method

.method public setSortOrder(I)V
    .locals 1
    .parameter "sortOrder"

    .prologue
    .line 687
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSortOrder:I

    .line 688
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setSortOrder(I)V

    .line 691
    :cond_0
    return-void
.end method

.method public setVerticalScrollbarPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 534
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    if-eq v0, p1, :cond_0

    .line 535
    iput p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    .line 536
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureVerticalScrollbar()V

    .line 538
    :cond_0
    return-void
.end method

.method public setVisibleScrollbarEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 523
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVisibleScrollbarEnabled:Z

    if-eq v0, p1, :cond_0

    .line 524
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVisibleScrollbarEnabled:Z

    .line 525
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureVerticalScrollbar()V

    .line 527
    :cond_0
    return-void
.end method

.method protected showCount(ILandroid/database/Cursor;)V
    .locals 0
    .parameter "partitionIndex"
    .parameter "data"

    .prologue
    .line 491
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    return-void
.end method

.method protected startLoading()V
    .locals 6

    .prologue
    .line 307
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-nez v4, :cond_0

    .line 330
    :goto_0
    return-void

    .line 312
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureAdapter()V

    .line 313
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v3

    .line 314
    .local v3, partitionCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_4

    .line 315
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v4, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v2

    .line 316
    .local v2, partition:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v4, v2, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v4, :cond_3

    move-object v0, v2

    .line 317
    check-cast v0, Lcom/android/contacts/list/DirectoryPartition;

    .line 318
    .local v0, directoryPartition:Lcom/android/contacts/list/DirectoryPartition;
    invoke-virtual {v0}, Lcom/android/contacts/list/DirectoryPartition;->getStatus()I

    move-result v4

    if-nez v4, :cond_2

    .line 319
    invoke-virtual {v0}, Lcom/android/contacts/list/DirectoryPartition;->isPriorityDirectory()Z

    move-result v4

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLoadPriorityDirectoriesOnly:Z

    if-nez v4, :cond_2

    .line 320
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->startLoadingDirectoryPartition(I)V

    .line 314
    .end local v0           #directoryPartition:Lcom/android/contacts/list/DirectoryPartition;
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 324
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_2

    .line 329
    .end local v2           #partition:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    :cond_4
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLoadPriorityDirectoriesOnly:Z

    goto :goto_0
.end method
