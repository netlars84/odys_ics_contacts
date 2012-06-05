.class interface abstract Lcom/android/contacts/SplitAggregateView$SplitQuery;
.super Ljava/lang/Object;
.source "SplitAggregateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/SplitAggregateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "SplitQuery"
.end annotation


# static fields
.field public static final ACCOUNT_TYPE:I = 0x1

.field public static final COLUMNS:[Ljava/lang/String; = null

.field public static final DATA_SET:I = 0x2

.field public static final DISPLAY_NAME:I = 0x5

.field public static final EMAIL:I = 0x7

.field public static final IS_PRIMARY:I = 0x4

.field public static final MIMETYPE:I = 0x0

.field public static final NICKNAME:I = 0x6

.field public static final PHONE:I = 0x8

.field public static final RAW_CONTACT_ID:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "mimetype"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data_set"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "raw_contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "is_primary"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/SplitAggregateView$SplitQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method
