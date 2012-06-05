.class final Lcom/android/contacts/editor/AggregationSuggestionEngine$DataQuery;
.super Ljava/lang/Object;
.source "AggregationSuggestionEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/AggregationSuggestionEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DataQuery"
.end annotation


# static fields
.field public static final ACCOUNT_NAME:I = 0xb

.field public static final ACCOUNT_TYPE:I = 0xa

.field public static final COLUMNS:[Ljava/lang/String; = null

.field public static final CONTACT_ID:I = 0x1

.field public static final DATA1:I = 0x7

.field public static final DATA_SET:I = 0xc

.field public static final DISPLAY_NAME:I = 0x4

.field public static final ID:I = 0x0

.field public static final IS_SUPERPRIMARY:I = 0x8

.field public static final LOOKUP_KEY:I = 0x2

.field public static final MIMETYPE:I = 0x6

.field public static final PHOTO:I = 0x9

.field public static final PHOTO_ID:I = 0x3

.field public static final RAW_CONTACT_ID:I = 0x5

.field public static final SELECTION_PREFIX:Ljava/lang/String; = "mimetype IN (\'vnd.android.cursor.item/phone_v2\',\'vnd.android.cursor.item/email_v2\',\'vnd.android.cursor.item/name\',\'vnd.android.cursor.item/nickname\',\'vnd.android.cursor.item/photo\') AND contact_id IN ("


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 269
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "raw_contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mimetype"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "is_super_primary"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "data15"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "data_set"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/editor/AggregationSuggestionEngine$DataQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
