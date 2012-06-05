.class public final Lcom/android/contacts/ContactsApplication;
.super Landroid/app/Application;
.source "ContactsApplication.java"


# static fields
.field private static final ENABLE_FRAGMENT_LOG:Z

.field private static final ENABLE_LOADER_LOG:Z

.field private static sInjectedServices:Lcom/android/contacts/test/InjectedServices;


# instance fields
.field private mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

.field private mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

.field private mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getInjectedServices()Lcom/android/contacts/test/InjectedServices;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/contacts/ContactsApplication;->sInjectedServices:Lcom/android/contacts/test/InjectedServices;

    return-object v0
.end method

.method public static injectServices(Lcom/android/contacts/test/InjectedServices;)V
    .locals 0
    .parameter "services"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 49
    sput-object p0, Lcom/android/contacts/ContactsApplication;->sInjectedServices:Lcom/android/contacts/test/InjectedServices;

    .line 50
    return-void
.end method


# virtual methods
.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 2

    .prologue
    .line 58
    sget-object v1, Lcom/android/contacts/ContactsApplication;->sInjectedServices:Lcom/android/contacts/test/InjectedServices;

    if-eqz v1, :cond_0

    .line 59
    sget-object v1, Lcom/android/contacts/ContactsApplication;->sInjectedServices:Lcom/android/contacts/test/InjectedServices;

    invoke-virtual {v1}, Lcom/android/contacts/test/InjectedServices;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 60
    .local v0, resolver:Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 64
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    goto :goto_0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 2
    .parameter "name"
    .parameter "mode"

    .prologue
    .line 69
    sget-object v1, Lcom/android/contacts/ContactsApplication;->sInjectedServices:Lcom/android/contacts/test/InjectedServices;

    if-eqz v1, :cond_0

    .line 70
    sget-object v1, Lcom/android/contacts/ContactsApplication;->sInjectedServices:Lcom/android/contacts/test/InjectedServices;

    invoke-virtual {v1}, Lcom/android/contacts/test/InjectedServices;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 71
    .local v0, prefs:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 76
    .end local v0           #prefs:Landroid/content/SharedPreferences;
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "name"

    .prologue
    .line 81
    sget-object v1, Lcom/android/contacts/ContactsApplication;->sInjectedServices:Lcom/android/contacts/test/InjectedServices;

    if-eqz v1, :cond_0

    .line 82
    sget-object v1, Lcom/android/contacts/ContactsApplication;->sInjectedServices:Lcom/android/contacts/test/InjectedServices;

    invoke-virtual {v1, p1}, Lcom/android/contacts/test/InjectedServices;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 83
    .local v0, service:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 112
    .end local v0           #service:Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 88
    :cond_0
    const-string v1, "contactAccountTypes"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 89
    iget-object v1, p0, Lcom/android/contacts/ContactsApplication;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    if-nez v1, :cond_1

    .line 90
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->createAccountTypeManager(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/ContactsApplication;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/ContactsApplication;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    goto :goto_0

    .line 95
    :cond_2
    const-string v1, "contactPhotos"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 96
    iget-object v1, p0, Lcom/android/contacts/ContactsApplication;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    if-nez v1, :cond_3

    .line 97
    invoke-static {p0}, Lcom/android/contacts/ContactPhotoManager;->createContactPhotoManager(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/ContactsApplication;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    .line 98
    iget-object v1, p0, Lcom/android/contacts/ContactsApplication;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {p0, v1}, Lcom/android/contacts/ContactsApplication;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 99
    iget-object v1, p0, Lcom/android/contacts/ContactsApplication;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v1}, Lcom/android/contacts/ContactPhotoManager;->preloadPhotosInBackground()V

    .line 101
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/ContactsApplication;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    goto :goto_0

    .line 104
    :cond_4
    const-string v1, "contactListFilter"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 105
    iget-object v1, p0, Lcom/android/contacts/ContactsApplication;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    if-nez v1, :cond_5

    .line 106
    invoke-static {p0}, Lcom/android/contacts/list/ContactListFilterController;->createContactListFilterController(Landroid/content/Context;)Lcom/android/contacts/list/ContactListFilterController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/ContactsApplication;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    .line 109
    :cond_5
    iget-object v0, p0, Lcom/android/contacts/ContactsApplication;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    goto :goto_0

    .line 112
    :cond_6
    invoke-super {p0, p1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 117
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 119
    const-string v1, "ContactsPerf"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    const-string v1, "ContactsPerf"

    const-string v2, "ContactsApplication.onCreate start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/ContactsApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 125
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 126
    invoke-static {v0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    .line 130
    const-string v1, "ContactsStrictMode"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 135
    :cond_1
    const-string v1, "ContactsPerf"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 136
    const-string v1, "ContactsPerf"

    const-string v2, "ContactsApplication.onCreate finish"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_2
    return-void
.end method
