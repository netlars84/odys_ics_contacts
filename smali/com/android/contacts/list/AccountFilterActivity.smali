.class public Lcom/android/contacts/list/AccountFilterActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "AccountFilterActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/AccountFilterActivity$1;,
        Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;,
        Lcom/android/contacts/list/AccountFilterActivity$MyLoaderCallbacks;,
        Lcom/android/contacts/list/AccountFilterActivity$FilterLoader;
    }
.end annotation


# static fields
.field private static final FILTER_LOADER_ID:I = 0x0

.field public static final KEY_EXTRA_CONTACT_LIST_FILTER:Ljava/lang/String; = "contactListFilter"

.field private static final SUBACTIVITY_CUSTOMIZE_FILTER:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mListView:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/android/contacts/list/AccountFilterActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/list/AccountFilterActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 197
    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-static {p0}, Lcom/android/contacts/list/AccountFilterActivity;->loadAccountFilters(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/contacts/list/AccountFilterActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/list/AccountFilterActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/contacts/list/AccountFilterActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private static loadAccountFilters(Landroid/content/Context;)Ljava/util/List;
    .locals 13
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/list/ContactListFilter;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    .line 110
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v8

    .line 111
    .local v8, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/list/ContactListFilter;>;"
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 112
    .local v1, accountFilters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/list/ContactListFilter;>;"
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v3

    .line 113
    .local v3, accountTypes:Lcom/android/contacts/model/AccountTypeManager;
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v4

    .line 114
    .local v4, accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    .line 115
    .local v0, account:Lcom/android/contacts/model/AccountWithDataSet;
    iget-object v9, v0, Lcom/android/contacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    iget-object v10, v0, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v3, v9, v10}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v2

    .line 116
    .local v2, accountType:Lcom/android/contacts/model/AccountType;
    invoke-virtual {v2}, Lcom/android/contacts/model/AccountType;->isExtension()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v0, p0}, Lcom/android/contacts/model/AccountWithDataSet;->hasData(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 120
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2, p0}, Lcom/android/contacts/model/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 121
    .local v7, icon:Landroid/graphics/drawable/Drawable;
    :goto_1
    iget-object v9, v0, Lcom/android/contacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    iget-object v10, v0, Lcom/android/contacts/model/AccountWithDataSet;->name:Ljava/lang/String;

    iget-object v11, v0, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-static {v9, v10, v11, v7}, Lcom/android/contacts/list/ContactListFilter;->createAccountFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 120
    .end local v7           #icon:Landroid/graphics/drawable/Drawable;
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 126
    .end local v0           #account:Lcom/android/contacts/model/AccountWithDataSet;
    .end local v2           #accountType:Lcom/android/contacts/model/AccountType;
    :cond_3
    const/4 v9, -0x2

    invoke-static {v9}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 130
    .local v5, count:I
    if-lt v5, v12, :cond_5

    .line 132
    if-le v5, v12, :cond_4

    .line 133
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 135
    :cond_4
    const/4 v9, -0x3

    invoke-static {v9}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_5
    return-object v8
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, -0x1

    .line 180
    if-eq p2, v3, :cond_0

    .line 195
    :goto_0
    return-void

    .line 184
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 186
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 187
    .local v1, intent:Landroid/content/Intent;
    const/4 v2, -0x3

    invoke-static {v2}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    .line 189
    .local v0, filter:Lcom/android/contacts/list/ContactListFilter;
    const-string v2, "contactListFilter"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 190
    invoke-virtual {p0, v3, v1}, Lcom/android/contacts/list/AccountFilterActivity;->setResult(ILandroid/content/Intent;)V

    .line 191
    invoke-virtual {p0}, Lcom/android/contacts/list/AccountFilterActivity;->finish()V

    goto :goto_0

    .line 184
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    .line 66
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v1, 0x7f040026

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/AccountFilterActivity;->setContentView(I)V

    .line 69
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/AccountFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/contacts/list/AccountFilterActivity;->mListView:Landroid/widget/ListView;

    .line 70
    iget-object v1, p0, Lcom/android/contacts/list/AccountFilterActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/contacts/list/AccountFilterActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 73
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 74
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/AccountFilterActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/android/contacts/list/AccountFilterActivity$MyLoaderCallbacks;

    invoke-direct {v3, p0, v4}, Lcom/android/contacts/list/AccountFilterActivity$MyLoaderCallbacks;-><init>(Lcom/android/contacts/list/AccountFilterActivity;Lcom/android/contacts/list/AccountFilterActivity$1;)V

    invoke-virtual {v1, v2, v4, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 78
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 164
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListFilter;

    .line 165
    .local v0, filter:Lcom/android/contacts/list/ContactListFilter;
    if-nez v0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 166
    :cond_0
    iget v2, v0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v3, -0x3

    if-ne v2, v3, :cond_1

    .line 167
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/list/CustomContactListFilterActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 169
    .local v1, intent:Landroid/content/Intent;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/list/AccountFilterActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 171
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 172
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "contactListFilter"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 173
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/contacts/list/AccountFilterActivity;->setResult(ILandroid/content/Intent;)V

    .line 174
    invoke-virtual {p0}, Lcom/android/contacts/list/AccountFilterActivity;->finish()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 241
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 251
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 246
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/contacts/list/AccountFilterActivity;->onBackPressed()V

    .line 247
    const/4 v0, 0x1

    goto :goto_0

    .line 241
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
