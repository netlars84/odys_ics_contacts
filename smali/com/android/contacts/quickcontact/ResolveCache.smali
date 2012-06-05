.class public Lcom/android/contacts/quickcontact/ResolveCache;
.super Ljava/lang/Object;
.source "ResolveCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/quickcontact/ResolveCache$Entry;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/contacts/quickcontact/ResolveCache;

.field private static final sPreferResolve:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/contacts/quickcontact/ResolveCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.email"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.android.calendar"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.android.contacts"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.android.mms"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.android.phone"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.android.browser"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/quickcontact/ResolveCache;->sPreferResolve:Ljava/util/HashSet;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Lcom/android/contacts/quickcontact/ResolveCache$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/ResolveCache$1;-><init>(Lcom/android/contacts/quickcontact/ResolveCache;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mCache:Ljava/util/HashMap;

    .line 110
    iput-object p1, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mContext:Landroid/content/Context;

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 112
    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 42
    invoke-static {}, Lcom/android/contacts/quickcontact/ResolveCache;->flush()V

    return-void
.end method

.method private static declared-synchronized flush()V
    .locals 2

    .prologue
    .line 84
    const-class v0, Lcom/android/contacts/quickcontact/ResolveCache;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/android/contacts/quickcontact/ResolveCache;->sInstance:Lcom/android/contacts/quickcontact/ResolveCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit v0

    return-void

    .line 84
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/contacts/quickcontact/ResolveCache;
    .locals 4
    .parameter "context"

    .prologue
    .line 68
    const-class v3, Lcom/android/contacts/quickcontact/ResolveCache;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/android/contacts/quickcontact/ResolveCache;->sInstance:Lcom/android/contacts/quickcontact/ResolveCache;

    if-nez v2, :cond_0

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 70
    .local v0, applicationContext:Landroid/content/Context;
    new-instance v2, Lcom/android/contacts/quickcontact/ResolveCache;

    invoke-direct {v2, v0}, Lcom/android/contacts/quickcontact/ResolveCache;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/contacts/quickcontact/ResolveCache;->sInstance:Lcom/android/contacts/quickcontact/ResolveCache;

    .line 73
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 74
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 78
    sget-object v2, Lcom/android/contacts/quickcontact/ResolveCache;->sInstance:Lcom/android/contacts/quickcontact/ResolveCache;

    iget-object v2, v2, Lcom/android/contacts/quickcontact/ResolveCache;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 80
    .end local v0           #applicationContext:Landroid/content/Context;
    .end local v1           #filter:Landroid/content/IntentFilter;
    :cond_0
    sget-object v2, Lcom/android/contacts/quickcontact/ResolveCache;->sInstance:Lcom/android/contacts/quickcontact/ResolveCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v2

    .line 68
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 227
    return-void
.end method

.method protected getBestResolve(Landroid/content/Intent;Ljava/util/List;)Landroid/content/pm/ResolveInfo;
    .locals 11
    .parameter "intent"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .prologue
    .local p2, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 166
    iget-object v9, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v10, 0x1

    invoke-virtual {v9, p1, v10}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 168
    .local v2, foundResolve:Landroid/content/pm/ResolveInfo;
    iget v9, v2, Landroid/content/pm/ResolveInfo;->match:I

    const/high16 v10, 0xfff

    and-int/2addr v9, v10

    if-nez v9, :cond_0

    move v1, v7

    .line 171
    .local v1, foundDisambig:Z
    :goto_0
    if-nez v1, :cond_1

    .line 189
    .end local v2           #foundResolve:Landroid/content/pm/ResolveInfo;
    :goto_1
    return-object v2

    .end local v1           #foundDisambig:Z
    .restart local v2       #foundResolve:Landroid/content/pm/ResolveInfo;
    :cond_0
    move v1, v8

    .line 168
    goto :goto_0

    .line 177
    .restart local v1       #foundDisambig:Z
    :cond_1
    const/4 v0, 0x0

    .line 178
    .local v0, firstSystem:Landroid/content/pm/ResolveInfo;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 179
    .local v4, info:Landroid/content/pm/ResolveInfo;
    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_3

    move v6, v7

    .line 181
    .local v6, isSystem:Z
    :goto_3
    sget-object v9, Lcom/android/contacts/quickcontact/ResolveCache;->sPreferResolve:Ljava/util/HashSet;

    iget-object v10, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 184
    .local v5, isPrefer:Z
    if-eqz v5, :cond_4

    move-object v2, v4

    goto :goto_1

    .end local v5           #isPrefer:Z
    .end local v6           #isSystem:Z
    :cond_3
    move v6, v8

    .line 179
    goto :goto_3

    .line 185
    .restart local v5       #isPrefer:Z
    .restart local v6       #isSystem:Z
    :cond_4
    if-eqz v6, :cond_2

    if-nez v0, :cond_2

    move-object v0, v4

    goto :goto_2

    .line 189
    .end local v4           #info:Landroid/content/pm/ResolveInfo;
    .end local v5           #isPrefer:Z
    .end local v6           #isSystem:Z
    :cond_5
    if-eqz v0, :cond_6

    .end local v0           #firstSystem:Landroid/content/pm/ResolveInfo;
    :goto_4
    move-object v2, v0

    goto :goto_1

    .restart local v0       #firstSystem:Landroid/content/pm/ResolveInfo;
    :cond_6
    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    move-object v0, v7

    goto :goto_4
.end method

.method public getDescription(Lcom/android/contacts/quickcontact/Action;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "action"

    .prologue
    .line 205
    invoke-interface {p1}, Lcom/android/contacts/quickcontact/Action;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 206
    .local v0, actionSubtitle:Ljava/lang/CharSequence;
    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/ResolveCache;->getEntry(Lcom/android/contacts/quickcontact/Action;)Lcom/android/contacts/quickcontact/ResolveCache$Entry;

    move-result-object v2

    iget-object v1, v2, Lcom/android/contacts/quickcontact/ResolveCache$Entry;->bestResolve:Landroid/content/pm/ResolveInfo;

    .line 207
    .local v1, info:Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_1

    .line 208
    iget-object v2, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 212
    .end local v0           #actionSubtitle:Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-object v0

    .line 209
    .restart local v0       #actionSubtitle:Ljava/lang/CharSequence;
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getEntry(Lcom/android/contacts/quickcontact/Action;)Lcom/android/contacts/quickcontact/ResolveCache$Entry;
    .locals 11
    .parameter "action"

    .prologue
    const/4 v10, 0x1

    .line 119
    invoke-interface {p1}, Lcom/android/contacts/quickcontact/Action;->getMimeType()Ljava/lang/String;

    move-result-object v6

    .line 120
    .local v6, mimeType:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/quickcontact/ResolveCache$Entry;

    .line 121
    .local v1, entry:Lcom/android/contacts/quickcontact/ResolveCache$Entry;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 152
    .end local v1           #entry:Lcom/android/contacts/quickcontact/ResolveCache$Entry;
    .local v2, entry:Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 122
    .end local v2           #entry:Ljava/lang/Object;
    .restart local v1       #entry:Lcom/android/contacts/quickcontact/ResolveCache$Entry;
    :cond_0
    new-instance v1, Lcom/android/contacts/quickcontact/ResolveCache$Entry;

    .end local v1           #entry:Lcom/android/contacts/quickcontact/ResolveCache$Entry;
    const/4 v8, 0x0

    invoke-direct {v1, v8}, Lcom/android/contacts/quickcontact/ResolveCache$Entry;-><init>(Lcom/android/contacts/quickcontact/ResolveCache$1;)V

    .line 124
    .restart local v1       #entry:Lcom/android/contacts/quickcontact/ResolveCache$Entry;
    invoke-interface {p1}, Lcom/android/contacts/quickcontact/Action;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 125
    .local v4, intent:Landroid/content/Intent;
    const-string v8, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSipPhone(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 127
    const/4 v4, 0x0

    .line 130
    :cond_1
    if-eqz v4, :cond_3

    .line 131
    iget-object v8, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v9, 0x1

    invoke-virtual {v8, v4, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 135
    .local v5, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .line 136
    .local v0, bestResolve:Landroid/content/pm/ResolveInfo;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    .line 137
    .local v7, size:I
    if-ne v7, v10, :cond_4

    .line 138
    const/4 v8, 0x0

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #bestResolve:Landroid/content/pm/ResolveInfo;
    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 143
    .restart local v0       #bestResolve:Landroid/content/pm/ResolveInfo;
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 144
    iget-object v8, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v8}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 146
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    iput-object v0, v1, Lcom/android/contacts/quickcontact/ResolveCache$Entry;->bestResolve:Landroid/content/pm/ResolveInfo;

    .line 147
    iput-object v3, v1, Lcom/android/contacts/quickcontact/ResolveCache$Entry;->icon:Landroid/graphics/drawable/Drawable;

    .line 151
    .end local v0           #bestResolve:Landroid/content/pm/ResolveInfo;
    .end local v3           #icon:Landroid/graphics/drawable/Drawable;
    .end local v5           #matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v7           #size:I
    :cond_3
    iget-object v8, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v8, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 152
    .restart local v2       #entry:Ljava/lang/Object;
    goto :goto_0

    .line 139
    .end local v2           #entry:Ljava/lang/Object;
    .restart local v0       #bestResolve:Landroid/content/pm/ResolveInfo;
    .restart local v5       #matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v7       #size:I
    :cond_4
    if-le v7, v10, :cond_2

    .line 140
    invoke-virtual {p0, v4, v5}, Lcom/android/contacts/quickcontact/ResolveCache;->getBestResolve(Landroid/content/Intent;Ljava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    goto :goto_1
.end method

.method public getIcon(Lcom/android/contacts/quickcontact/Action;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "action"

    .prologue
    .line 222
    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/ResolveCache;->getEntry(Lcom/android/contacts/quickcontact/Action;)Lcom/android/contacts/quickcontact/ResolveCache$Entry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/ResolveCache$Entry;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public hasResolve(Lcom/android/contacts/quickcontact/Action;)Z
    .locals 1
    .parameter "action"

    .prologue
    .line 197
    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/ResolveCache;->getEntry(Lcom/android/contacts/quickcontact/Action;)Lcom/android/contacts/quickcontact/ResolveCache$Entry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/ResolveCache$Entry;->bestResolve:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
