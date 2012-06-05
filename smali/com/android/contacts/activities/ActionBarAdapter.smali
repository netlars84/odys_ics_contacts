.class public Lcom/android/contacts/activities/ActionBarAdapter;
.super Ljava/lang/Object;
.source "ActionBarAdapter.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Landroid/widget/SearchView$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/ActionBarAdapter$1;,
        Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;,
        Lcom/android/contacts/activities/ActionBarAdapter$TabState;,
        Lcom/android/contacts/activities/ActionBarAdapter$Listener;
    }
.end annotation


# static fields
.field private static final DEFAULT_TAB:Lcom/android/contacts/activities/ActionBarAdapter$TabState; = null

.field private static final EXTRA_KEY_QUERY:Ljava/lang/String; = "navBar.query"

.field private static final EXTRA_KEY_SEARCH_MODE:Ljava/lang/String; = "navBar.searchMode"

.field private static final EXTRA_KEY_SELECTED_TAB:Ljava/lang/String; = "navBar.selectedTab"

.field private static final PERSISTENT_LAST_TAB:Ljava/lang/String; = "actionBarAdapter.lastTab"


# instance fields
.field private final mActionBar:Landroid/app/ActionBar;

.field private final mContext:Landroid/content/Context;

.field private mCurrentTab:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

.field private mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

.field private final mPrefs:Landroid/content/SharedPreferences;

.field private mQueryString:Ljava/lang/String;

.field private mSearchMode:Z

.field private mSearchView:Landroid/widget/SearchView;

.field private mShowHomeIcon:Z

.field private mShowTabsAsText:Z

.field private final mTabListener:Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->ALL:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    sput-object v0, Lcom/android/contacts/activities/ActionBarAdapter;->DEFAULT_TAB:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/activities/ActionBarAdapter$Listener;Landroid/app/ActionBar;Z)V
    .locals 6
    .parameter "context"
    .parameter "listener"
    .parameter "actionBar"
    .parameter "isUsingTwoPanes"

    .prologue
    const/4 v5, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v3, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;

    invoke-direct {v3, p0, v5}, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;-><init>(Lcom/android/contacts/activities/ActionBarAdapter;Lcom/android/contacts/activities/ActionBarAdapter$1;)V

    iput-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mTabListener:Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;

    .line 100
    sget-object v3, Lcom/android/contacts/activities/ActionBarAdapter;->DEFAULT_TAB:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    iput-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    .line 104
    iput-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    .line 105
    iput-object p2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    .line 106
    iput-object p3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    .line 107
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mPrefs:Landroid/content/SharedPreferences;

    .line 109
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a000e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mShowHomeIcon:Z

    .line 112
    iput-boolean p4, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mShowTabsAsText:Z

    .line 115
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040034

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 117
    .local v0, customSearchView:Landroid/view/View;
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080037

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 119
    .local v2, searchViewWidth:I
    if-nez v2, :cond_0

    .line 120
    const/4 v2, -0x1

    .line 122
    :cond_0
    new-instance v1, Landroid/app/ActionBar$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    .line 123
    .local v1, layoutParams:Landroid/app/ActionBar$LayoutParams;
    const v3, 0x7f060083

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SearchView;

    iput-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    .line 129
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 130
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    iget-object v4, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0b01a1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 132
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3, p0}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 133
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    iget-object v4, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 134
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3, v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 137
    sget-object v3, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->GROUPS:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    const v4, 0x7f02008d

    const v5, 0x7f0b0068

    invoke-direct {p0, v3, v4, v5}, Lcom/android/contacts/activities/ActionBarAdapter;->addTab(Lcom/android/contacts/activities/ActionBarAdapter$TabState;II)V

    .line 138
    sget-object v3, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->ALL:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    const v4, 0x7f02008a

    const v5, 0x7f0b0067

    invoke-direct {p0, v3, v4, v5}, Lcom/android/contacts/activities/ActionBarAdapter;->addTab(Lcom/android/contacts/activities/ActionBarAdapter$TabState;II)V

    .line 139
    sget-object v3, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->FAVORITES:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    const v4, 0x7f020090

    const v5, 0x7f0b0069

    invoke-direct {p0, v3, v4, v5}, Lcom/android/contacts/activities/ActionBarAdapter;->addTab(Lcom/android/contacts/activities/ActionBarAdapter$TabState;II)V

    .line 140
    return-void
.end method

.method private addTab(Lcom/android/contacts/activities/ActionBarAdapter$TabState;II)V
    .locals 2
    .parameter "tabState"
    .parameter "icon"
    .parameter "description"

    .prologue
    .line 162
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 163
    .local v0, tab:Landroid/app/ActionBar$Tab;
    invoke-virtual {v0, p1}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    .line 164
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mTabListener:Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 165
    iget-boolean v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mShowTabsAsText:Z

    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {v0, p3}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    .line 171
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 172
    return-void

    .line 168
    :cond_0
    invoke-virtual {v0, p2}, Landroid/app/ActionBar$Tab;->setIcon(I)Landroid/app/ActionBar$Tab;

    .line 169
    invoke-virtual {v0, p3}, Landroid/app/ActionBar$Tab;->setContentDescription(I)Landroid/app/ActionBar$Tab;

    goto :goto_0
.end method

.method private loadLastTabPreference()Lcom/android/contacts/activities/ActionBarAdapter$TabState;
    .locals 4

    .prologue
    .line 400
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "actionBarAdapter.lastTab"

    sget-object v3, Lcom/android/contacts/activities/ActionBarAdapter;->DEFAULT_TAB:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    invoke-virtual {v3}, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->ordinal()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->fromInt(I)Lcom/android/contacts/activities/ActionBarAdapter$TabState;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 403
    :goto_0
    return-object v1

    .line 401
    :catch_0
    move-exception v0

    .line 403
    .local v0, e:Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/android/contacts/activities/ActionBarAdapter;->DEFAULT_TAB:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    goto :goto_0
.end method

.method private saveLastTabPreference(Lcom/android/contacts/activities/ActionBarAdapter$TabState;)V
    .locals 3
    .parameter "tab"

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "actionBarAdapter.lastTab"

    invoke-virtual {p1}, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->ordinal()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 396
    return-void
.end method

.method private setFocusOnSearchView()V
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->requestFocus()Z

    .line 391
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 392
    return-void
.end method

.method private update()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 292
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-eqz v0, :cond_2

    .line 293
    invoke-direct {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->setFocusOnSearchView()V

    .line 296
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 297
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    sget-object v1, Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;->START_SEARCH_MODE:Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;

    invoke-interface {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter$Listener;->onAction(Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;)V

    .line 327
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->updateDisplayOptions()V

    .line 328
    return-void

    .line 304
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v0

    if-eq v0, v3, :cond_3

    .line 313
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mTabListener:Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;->mIgnoreTabSelected:Z

    .line 314
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 315
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 316
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mTabListener:Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;

    iput-boolean v2, v0, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;->mIgnoreTabSelected:Z

    .line 318
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->onActionViewCollapsed()V

    .line 322
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    sget-object v1, Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;->STOP_SEARCH_MODE:Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;

    invoke-interface {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter$Listener;->onAction(Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;)V

    .line 324
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    invoke-interface {v0}, Lcom/android/contacts/activities/ActionBarAdapter$Listener;->onSelectedTabChanged()V

    goto :goto_0
.end method

.method private updateDisplayOptions()V
    .locals 5

    .prologue
    .line 266
    const/16 v0, 0x1e

    .line 270
    .local v0, MASK:I
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v3

    and-int/lit8 v1, v3, 0x1e

    .line 273
    .local v1, current:I
    const/4 v2, 0x0

    .line 274
    .local v2, newFlags:I
    or-int/lit8 v2, v2, 0x8

    .line 275
    iget-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mShowHomeIcon:Z

    if-eqz v3, :cond_0

    .line 276
    or-int/lit8 v2, v2, 0x2

    .line 278
    :cond_0
    iget-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-eqz v3, :cond_1

    .line 279
    or-int/lit8 v2, v2, 0x2

    .line 280
    or-int/lit8 v2, v2, 0x4

    .line 281
    or-int/lit8 v2, v2, 0x10

    .line 283
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget-boolean v4, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 285
    if-eq v1, v2, :cond_2

    .line 287
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    const/16 v4, 0x1e

    invoke-virtual {v3, v2, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 289
    :cond_2
    return-void
.end method


# virtual methods
.method public clearFocusOnSearchView()V
    .locals 1

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 387
    :cond_0
    return-void
.end method

.method public getCurrentTab()Lcom/android/contacts/activities/ActionBarAdapter$TabState;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    return-object v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(Landroid/os/Bundle;Lcom/android/contacts/list/ContactsRequest;)V
    .locals 1
    .parameter "savedState"
    .parameter "request"

    .prologue
    .line 143
    if-nez p1, :cond_0

    .line 144
    invoke-virtual {p2}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    .line 145
    invoke-virtual {p2}, Lcom/android/contacts/list/ContactsRequest;->getQueryString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    .line 146
    invoke-direct {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->loadLastTabPreference()Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    .line 154
    :goto_0
    invoke-direct {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->update()V

    .line 155
    return-void

    .line 148
    :cond_0
    const-string v0, "navBar.searchMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    .line 149
    const-string v0, "navBar.query"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    .line 152
    const-string v0, "navBar.selectedTab"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->fromInt(I)Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    goto :goto_0
.end method

.method public isSearchMode()Z
    .locals 1

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    return v0
.end method

.method public isUpShowing()Z
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    return v0
.end method

.method public onClose()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 367
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchMode(Z)V

    .line 368
    return v0
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 3
    .parameter "queryString"

    .prologue
    const/4 v0, 0x1

    .line 335
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 336
    const/4 v0, 0x0

    .line 347
    :cond_0
    :goto_0
    return v0

    .line 338
    :cond_1
    iput-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    .line 339
    iget-boolean v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-nez v1, :cond_2

    .line 340
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 341
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchMode(Z)V

    goto :goto_0

    .line 343
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    if-eqz v1, :cond_0

    .line 344
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    sget-object v2, Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;->CHANGE_SEARCH_QUERY:Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;

    invoke-interface {v1, v2}, Lcom/android/contacts/activities/ActionBarAdapter$Listener;->onAction(Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;)V

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 3
    .parameter "query"

    .prologue
    .line 354
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    if-eqz v1, :cond_1

    .line 355
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 357
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 358
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 360
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    .line 362
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 372
    const-string v0, "navBar.searchMode"

    iget-boolean v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 373
    const-string v0, "navBar.query"

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string v0, "navBar.selectedTab"

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 375
    return-void
.end method

.method public setCurrentTab(Lcom/android/contacts/activities/ActionBarAdapter$TabState;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 196
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/activities/ActionBarAdapter;->setCurrentTab(Lcom/android/contacts/activities/ActionBarAdapter$TabState;Z)V

    .line 197
    return-void
.end method

.method public setCurrentTab(Lcom/android/contacts/activities/ActionBarAdapter$TabState;Z)V
    .locals 3
    .parameter "tab"
    .parameter "notifyListener"

    .prologue
    .line 203
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    if-ne p1, v1, :cond_1

    .line 217
    :goto_0
    return-void

    .line 207
    :cond_1
    iput-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    .line 209
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->ordinal()I

    move-result v0

    .line 210
    .local v0, index:I
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 212
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 215
    :cond_2
    if-eqz p2, :cond_3

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    invoke-interface {v1}, Lcom/android/contacts/activities/ActionBarAdapter$Listener;->onSelectedTabChanged()V

    .line 216
    :cond_3
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    invoke-direct {p0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->saveLastTabPreference(Lcom/android/contacts/activities/ActionBarAdapter$TabState;)V

    goto :goto_0
.end method

.method public setListener(Lcom/android/contacts/activities/ActionBarAdapter$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    .line 159
    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 2
    .parameter "query"

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    .line 254
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 257
    :cond_0
    return-void
.end method

.method public setSearchMode(Z)V
    .locals 3
    .parameter "flag"

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-eq v0, p1, :cond_0

    .line 235
    iput-boolean p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    .line 236
    invoke-direct {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->update()V

    .line 237
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    if-nez v0, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-eqz v0, :cond_2

    .line 241
    invoke-direct {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->setFocusOnSearchView()V

    goto :goto_0

    .line 243
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method
