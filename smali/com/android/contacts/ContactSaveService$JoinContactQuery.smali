.class interface abstract Lcom/android/contacts/ContactSaveService$JoinContactQuery;
.super Ljava/lang/Object;
.source "ContactSaveService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ContactSaveService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "JoinContactQuery"
.end annotation


# static fields
.field public static final CONTACT_ID:I = 0x1

.field public static final DISPLAY_NAME_SOURCE:I = 0x3

.field public static final NAME_VERIFIED:I = 0x2

.field public static final PROJECTION:[Ljava/lang/String; = null

.field public static final SELECTION:Ljava/lang/String; = "contact_id=? OR contact_id=?"

.field public static final _ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 859
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "name_verified"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "display_name_source"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/ContactSaveService$JoinContactQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
