.class final Lcom/android/contacts/calllog/PhoneQuery;
.super Ljava/lang/Object;
.source "PhoneQuery.java"


# static fields
.field public static final LABEL:I = 0x3

.field public static final LOOKUP_KEY:I = 0x7

.field public static final MATCHED_NUMBER:I = 0x4

.field public static final NAME:I = 0x1

.field public static final NORMALIZED_NUMBER:I = 0x5

.field public static final PERSON_ID:I = 0x0

.field public static final PHONE_TYPE:I = 0x2

.field public static final PHOTO_ID:I = 0x6

.field public static final PHOTO_URI:I = 0x8

.field public static final _PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "label"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "normalized_number"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "photo_uri"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/calllog/PhoneQuery;->_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
