.class final Lcom/android/contacts/model/AccountWithDataSet$1;
.super Ljava/lang/Object;
.source "AccountWithDataSet.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/AccountWithDataSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/contacts/model/AccountWithDataSet;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/contacts/model/AccountWithDataSet;
    .locals 1
    .parameter "source"

    .prologue
    .line 78
    new-instance v0, Lcom/android/contacts/model/AccountWithDataSet;

    invoke-direct {v0, p1}, Lcom/android/contacts/model/AccountWithDataSet;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/AccountWithDataSet$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/contacts/model/AccountWithDataSet;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/contacts/model/AccountWithDataSet;
    .locals 1
    .parameter "size"

    .prologue
    .line 82
    new-array v0, p1, [Lcom/android/contacts/model/AccountWithDataSet;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/AccountWithDataSet$1;->newArray(I)[Lcom/android/contacts/model/AccountWithDataSet;

    move-result-object v0

    return-object v0
.end method
