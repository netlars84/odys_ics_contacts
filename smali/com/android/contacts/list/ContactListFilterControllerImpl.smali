.class Lcom/android/contacts/list/ContactListFilterControllerImpl;
.super Lcom/android/contacts/list/ContactListFilterController;
.source "ContactListFilterController.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFilter:Lcom/android/contacts/list/ContactListFilter;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/contacts/list/ContactListFilterController;-><init>()V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListFilterControllerImpl;->mListeners:Ljava/util/List;

    .line 86
    iput-object p1, p0, Lcom/android/contacts/list/ContactListFilterControllerImpl;->mContext:Landroid/content/Context;

    .line 87
    invoke-direct {p0}, Lcom/android/contacts/list/ContactListFilterControllerImpl;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/list/ContactListFilter;->restoreDefaultPreferences(Landroid/content/SharedPreferences;)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactListFilterControllerImpl;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 88
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListFilterControllerImpl;->checkFilterValidity(Z)V

    .line 89
    return-void
.end method

.method private filterAccountExists()Z
    .locals 5

    .prologue
    .line 166
    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    .line 167
    .local v0, accountTypeManager:Lcom/android/contacts/model/AccountTypeManager;
    new-instance v1, Lcom/android/contacts/model/AccountWithDataSet;

    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterControllerImpl;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget-object v2, v2, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/list/ContactListFilterControllerImpl;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget-object v3, v3, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/contacts/list/ContactListFilterControllerImpl;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget-object v4, v4, Lcom/android/contacts/list/ContactListFilter;->dataSet:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/contacts/model/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .local v1, filterAccount:Lcom/android/contacts/model/AccountWithDataSet;
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/model/AccountTypeManager;->contains(Lcom/android/contacts/model/AccountWithDataSet;Z)Z

    move-result v2

    return v2
.end method

.method private getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private notifyContactListFilterChanged()V
    .locals 3

    .prologue
    .line 135
    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterControllerImpl;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;

    .line 136
    .local v1, listener:Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;
    invoke-interface {v1}, Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;->onContactListFilterChanged()V

    goto :goto_0

    .line 138
    .end local v1           #listener:Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;
    :cond_0
    return-void
.end method

.method private setContactListFilter(Lcom/android/contacts/list/ContactListFilter;ZZ)V
    .locals 2
    .parameter "filter"
    .parameter "persistent"
    .parameter "notifyListeners"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterControllerImpl;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {p1, v0}, Lcom/android/contacts/list/ContactListFilter;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    iput-object p1, p0, Lcom/android/contacts/list/ContactListFilterControllerImpl;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 119
    if-eqz p2, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/android/contacts/list/ContactListFilterControllerImpl;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterControllerImpl;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-static {v0, v1}, Lcom/android/contacts/list/ContactListFilter;->storeToPreferences(Landroid/content/SharedPreferences;Lcom/android/contacts/list/ContactListFilter;)V

    .line 122
    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterControllerImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 123
    invoke-direct {p0}, Lcom/android/contacts/list/ContactListFilterControllerImpl;->notifyContactListFilterChanged()V

    .line 126
    :cond_1
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterControllerImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    return-void
.end method

.method public checkFilterValidity(Z)V
    .locals 2
    .parameter "notifyListeners"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterControllerImpl;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-nez v0, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterControllerImpl;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget v0, v0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 148
    :sswitch_0
    invoke-direct {p0}, Lcom/android/contacts/list/ContactListFilterControllerImpl;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/list/ContactListFilter;->restoreDefaultPreferences(Landroid/content/SharedPreferences;)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/contacts/list/ContactListFilterControllerImpl;->setContactListFilter(Lcom/android/contacts/list/ContactListFilter;ZZ)V

    goto :goto_0

    .line 153
    :sswitch_1
    invoke-direct {p0}, Lcom/android/contacts/list/ContactListFilterControllerImpl;->filterAccountExists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    const/4 v0, -0x2

    invoke-static {v0}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/contacts/list/ContactListFilterControllerImpl;->setContactListFilter(Lcom/android/contacts/list/ContactListFilter;ZZ)V

    goto :goto_0

    .line 146
    :sswitch_data_0
    .sparse-switch
        -0x6 -> :sswitch_0
        0x0 -> :sswitch_1
    .end sparse-switch
.end method

.method public getFilter()Lcom/android/contacts/list/ContactListFilter;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterControllerImpl;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    return-object v0
.end method

.method public removeListener(Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterControllerImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 99
    return-void
.end method

.method public selectCustomFilter()V
    .locals 2

    .prologue
    .line 130
    const/4 v0, -0x3

    invoke-static {v0}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/list/ContactListFilterControllerImpl;->setContactListFilter(Lcom/android/contacts/list/ContactListFilter;Z)V

    .line 132
    return-void
.end method

.method public setContactListFilter(Lcom/android/contacts/list/ContactListFilter;Z)V
    .locals 1
    .parameter "filter"
    .parameter "persistent"

    .prologue
    .line 112
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/list/ContactListFilterControllerImpl;->setContactListFilter(Lcom/android/contacts/list/ContactListFilter;ZZ)V

    .line 113
    return-void
.end method
