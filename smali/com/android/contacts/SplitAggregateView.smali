.class public Lcom/android/contacts/SplitAggregateView;
.super Landroid/widget/ListView;
.source "SplitAggregateView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/SplitAggregateView$SplitAggregateAdapter;,
        Lcom/android/contacts/SplitAggregateView$SplitAggregateItemCache;,
        Lcom/android/contacts/SplitAggregateView$RawContactInfo;,
        Lcom/android/contacts/SplitAggregateView$OnContactSelectedListener;,
        Lcom/android/contacts/SplitAggregateView$SplitQuery;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SplitAggregateView"


# instance fields
.field private mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

.field private final mAggregateUri:Landroid/net/Uri;

.field private mListener:Lcom/android/contacts/SplitAggregateView$OnContactSelectedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .parameter "context"
    .parameter "aggregateUri"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 93
    iput-object p2, p0, Lcom/android/contacts/SplitAggregateView;->mAggregateUri:Landroid/net/Uri;

    .line 95
    invoke-static {p1}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/SplitAggregateView;->mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

    .line 97
    invoke-direct {p0}, Lcom/android/contacts/SplitAggregateView;->loadData()Ljava/util/List;

    move-result-object v0

    .line 99
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/SplitAggregateView$RawContactInfo;>;"
    new-instance v1, Lcom/android/contacts/SplitAggregateView$SplitAggregateAdapter;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/contacts/SplitAggregateView$SplitAggregateAdapter;-><init>(Lcom/android/contacts/SplitAggregateView;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/android/contacts/SplitAggregateView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 100
    new-instance v1, Lcom/android/contacts/SplitAggregateView$1;

    invoke-direct {v1, p0, v0}, Lcom/android/contacts/SplitAggregateView$1;-><init>(Lcom/android/contacts/SplitAggregateView;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/android/contacts/SplitAggregateView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/SplitAggregateView;)Lcom/android/contacts/SplitAggregateView$OnContactSelectedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/contacts/SplitAggregateView;->mListener:Lcom/android/contacts/SplitAggregateView$OnContactSelectedListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/SplitAggregateView;)Lcom/android/contacts/model/AccountTypeManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/contacts/SplitAggregateView;->mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

    return-object v0
.end method

.method private loadData()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/SplitAggregateView$RawContactInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 159
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 160
    .local v12, rawContactInfos:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/contacts/SplitAggregateView$RawContactInfo;>;"
    iget-object v0, p0, Lcom/android/contacts/SplitAggregateView;->mAggregateUri:Landroid/net/Uri;

    const-string v2, "data"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 161
    .local v1, dataUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/contacts/SplitAggregateView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/contacts/SplitAggregateView$SplitQuery;->COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 164
    .local v6, cursor:Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 165
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 166
    .local v10, rawContactId:J
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/SplitAggregateView$RawContactInfo;

    .line 167
    .local v7, info:Lcom/android/contacts/SplitAggregateView$RawContactInfo;
    if-nez v7, :cond_1

    .line 168
    new-instance v7, Lcom/android/contacts/SplitAggregateView$RawContactInfo;

    .end local v7           #info:Lcom/android/contacts/SplitAggregateView$RawContactInfo;
    invoke-direct {v7, v10, v11}, Lcom/android/contacts/SplitAggregateView$RawContactInfo;-><init>(J)V

    .line 169
    .restart local v7       #info:Lcom/android/contacts/SplitAggregateView$RawContactInfo;
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v12, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/contacts/SplitAggregateView$RawContactInfo;->accountType:Ljava/lang/String;

    .line 171
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/contacts/SplitAggregateView$RawContactInfo;->dataSet:Ljava/lang/String;

    .line 174
    :cond_1
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 175
    .local v9, mimetype:Ljava/lang/String;
    const-string v0, "vnd.android.cursor.item/name"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    invoke-direct {p0, v6, v7}, Lcom/android/contacts/SplitAggregateView;->loadStructuredName(Landroid/database/Cursor;Lcom/android/contacts/SplitAggregateView$RawContactInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 186
    .end local v7           #info:Lcom/android/contacts/SplitAggregateView$RawContactInfo;
    .end local v9           #mimetype:Ljava/lang/String;
    .end local v10           #rawContactId:J
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 177
    .restart local v7       #info:Lcom/android/contacts/SplitAggregateView$RawContactInfo;
    .restart local v9       #mimetype:Ljava/lang/String;
    .restart local v10       #rawContactId:J
    :cond_2
    :try_start_1
    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 178
    invoke-direct {p0, v6, v7}, Lcom/android/contacts/SplitAggregateView;->loadPhoneNumber(Landroid/database/Cursor;Lcom/android/contacts/SplitAggregateView$RawContactInfo;)V

    goto :goto_0

    .line 179
    :cond_3
    const-string v0, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 180
    invoke-direct {p0, v6, v7}, Lcom/android/contacts/SplitAggregateView;->loadEmail(Landroid/database/Cursor;Lcom/android/contacts/SplitAggregateView$RawContactInfo;)V

    goto :goto_0

    .line 181
    :cond_4
    const-string v0, "vnd.android.cursor.item/nickname"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-direct {p0, v6, v7}, Lcom/android/contacts/SplitAggregateView;->loadNickname(Landroid/database/Cursor;Lcom/android/contacts/SplitAggregateView$RawContactInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 186
    .end local v7           #info:Lcom/android/contacts/SplitAggregateView$RawContactInfo;
    .end local v9           #mimetype:Ljava/lang/String;
    .end local v10           #rawContactId:J
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 189
    new-instance v8, Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 190
    .local v8, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/SplitAggregateView$RawContactInfo;>;"
    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 191
    return-object v8
.end method

.method private loadEmail(Landroid/database/Cursor;Lcom/android/contacts/SplitAggregateView$RawContactInfo;)V
    .locals 1
    .parameter "cursor"
    .parameter "info"

    .prologue
    .line 205
    iget-object v0, p2, Lcom/android/contacts/SplitAggregateView$RawContactInfo;->email:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    :cond_0
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/contacts/SplitAggregateView$RawContactInfo;->email:Ljava/lang/String;

    .line 208
    :cond_1
    return-void
.end method

.method private loadNickname(Landroid/database/Cursor;Lcom/android/contacts/SplitAggregateView$RawContactInfo;)V
    .locals 1
    .parameter "cursor"
    .parameter "info"

    .prologue
    .line 199
    iget-object v0, p2, Lcom/android/contacts/SplitAggregateView$RawContactInfo;->nickname:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    :cond_0
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/contacts/SplitAggregateView$RawContactInfo;->nickname:Ljava/lang/String;

    .line 202
    :cond_1
    return-void
.end method

.method private loadPhoneNumber(Landroid/database/Cursor;Lcom/android/contacts/SplitAggregateView$RawContactInfo;)V
    .locals 1
    .parameter "cursor"
    .parameter "info"

    .prologue
    .line 211
    iget-object v0, p2, Lcom/android/contacts/SplitAggregateView$RawContactInfo;->phone:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    :cond_0
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/contacts/SplitAggregateView$RawContactInfo;->phone:Ljava/lang/String;

    .line 214
    :cond_1
    return-void
.end method

.method private loadStructuredName(Landroid/database/Cursor;Lcom/android/contacts/SplitAggregateView$RawContactInfo;)V
    .locals 1
    .parameter "cursor"
    .parameter "info"

    .prologue
    .line 195
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/contacts/SplitAggregateView$RawContactInfo;->name:Ljava/lang/String;

    .line 196
    return-void
.end method


# virtual methods
.method public setOnContactSelectedListener(Lcom/android/contacts/SplitAggregateView$OnContactSelectedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/contacts/SplitAggregateView;->mListener:Lcom/android/contacts/SplitAggregateView$OnContactSelectedListener;

    .line 113
    return-void
.end method
