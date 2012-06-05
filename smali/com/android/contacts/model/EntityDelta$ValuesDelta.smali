.class public Lcom/android/contacts/model/EntityDelta$ValuesDelta;
.super Ljava/lang/Object;
.source "EntityDelta.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/EntityDelta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ValuesDelta"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/contacts/model/EntityDelta$ValuesDelta;",
            ">;"
        }
    .end annotation
.end field

.field protected static sNextInsertId:I


# instance fields
.field protected mAfter:Landroid/content/ContentValues;

.field protected mBefore:Landroid/content/ContentValues;

.field private mFromTemplate:Z

.field protected mIdColumn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 537
    const/4 v0, -0x1

    sput v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->sNextInsertId:I

    .line 924
    new-instance v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta$1;

    invoke-direct {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta$1;-><init>()V

    sput-object v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 528
    const-string v0, "_id"

    iput-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mIdColumn:Ljava/lang/String;

    .line 540
    return-void
.end method

.method private ensureUpdate()V
    .locals 1

    .prologue
    .line 733
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-nez v0, :cond_0

    .line 734
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    .line 736
    :cond_0
    return-void
.end method

.method public static fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .locals 5
    .parameter "after"

    .prologue
    .line 558
    new-instance v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-direct {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;-><init>()V

    .line 559
    .local v0, entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    .line 560
    iput-object p0, v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    .line 563
    iget-object v1, v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    iget-object v2, v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mIdColumn:Ljava/lang/String;

    sget v3, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->sNextInsertId:I

    add-int/lit8 v4, v3, -0x1

    sput v4, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->sNextInsertId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 564
    return-object v0
.end method

.method public static fromBefore(Landroid/content/ContentValues;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .locals 2
    .parameter "before"

    .prologue
    .line 547
    new-instance v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-direct {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;-><init>()V

    .line 548
    .local v0, entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    iput-object p0, v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    .line 549
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iput-object v1, v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    .line 550
    return-object v0
.end method

.method public static mergeAfter(Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .locals 1
    .parameter "local"
    .parameter "remote"

    .prologue
    .line 811
    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isTransient()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p0, 0x0

    .line 824
    .end local p0
    :goto_0
    return-object p0

    .line 814
    .restart local p0
    :cond_1
    if-nez p0, :cond_2

    new-instance p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .end local p0
    invoke-direct {p0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;-><init>()V

    .line 816
    .restart local p0
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->beforeExists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 818
    invoke-virtual {p1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getCompleteValues()Landroid/content/ContentValues;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    goto :goto_0

    .line 821
    :cond_3
    iget-object v0, p1, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    iput-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    goto :goto_0
.end method


# virtual methods
.method public beforeExists()Z
    .locals 2

    .prologue
    .line 666
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    iget-object v1, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mIdColumn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public buildDiff(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    .locals 4
    .parameter "targetUri"

    .prologue
    const/4 v3, 0x0

    .line 885
    const/4 v0, 0x0

    .line 886
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isInsert()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 888
    iget-object v1, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    iget-object v2, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mIdColumn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 889
    invoke-static {p1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 890
    iget-object v1, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 901
    :cond_0
    :goto_0
    return-object v0

    .line 891
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 893
    invoke-static {p1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 894
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mIdColumn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0

    .line 895
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isUpdate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 897
    invoke-static {p1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 898
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mIdColumn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 899
    iget-object v1, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 907
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "object"

    .prologue
    const/4 v1, 0x0

    .line 829
    instance-of v2, p1, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 831
    check-cast v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 832
    .local v0, other:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {p0, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->subsetEquals(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->subsetEquals(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 834
    .end local v0           #other:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_0
    return v1
.end method

.method public getAfter()Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    return-object v0
.end method

.method public getAsByteArray(Ljava/lang/String;)[B
    .locals 1
    .parameter "key"

    .prologue
    .line 587
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 592
    :goto_0
    return-object v0

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 590
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    .line 592
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .parameter "key"

    .prologue
    .line 607
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getAsInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 611
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 612
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    .line 616
    .end local p2
    :cond_0
    :goto_0
    return-object p2

    .line 613
    .restart local p2
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0
.end method

.method public getAsLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .parameter "key"

    .prologue
    .line 597
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 602
    :goto_0
    return-object v0

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 600
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 602
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 582
    :goto_0
    return-object v0

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 580
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 582
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCompleteValues()Landroid/content/ContentValues;
    .locals 2

    .prologue
    .line 789
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 790
    .local v0, values:Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v1, :cond_0

    .line 791
    iget-object v1, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 793
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v1, :cond_1

    .line 794
    iget-object v1, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 796
    :cond_1
    const-string v1, "data1"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 798
    const-string v1, "group_sourceid"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 801
    :cond_2
    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mIdColumn:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getMimetype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 636
    const-string v0, "mimetype"

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isChanged(Ljava/lang/String;)Z
    .locals 5
    .parameter "key"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 621
    iget-object v4, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v4, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    move v2, v3

    .line 632
    :cond_1
    :goto_0
    return v2

    .line 625
    :cond_2
    iget-object v4, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v4, p1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 626
    .local v0, newValue:Ljava/lang/Object;
    iget-object v4, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v4, p1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 628
    .local v1, oldValue:Ljava/lang/Object;
    if-nez v1, :cond_3

    .line 629
    if-nez v0, :cond_1

    move v2, v3

    goto :goto_0

    .line 632
    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    goto :goto_0
.end method

.method public isDelete()Z
    .locals 1

    .prologue
    .line 680
    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->beforeExists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFromTemplate()Z
    .locals 1

    .prologue
    .line 657
    iget-boolean v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mFromTemplate:Z

    return v0
.end method

.method public isInsert()Z
    .locals 1

    .prologue
    .line 722
    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->beforeExists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNoop()Z
    .locals 1

    .prologue
    .line 715
    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->beforeExists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrimary()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 648
    const-string v2, "is_primary"

    invoke-virtual {p0, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 649
    .local v0, isPrimary:Ljava/lang/Long;
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isSuperPrimary()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 661
    const-string v2, "is_super_primary"

    invoke-virtual {p0, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 662
    .local v0, isSuperPrimary:Ljava/lang/Long;
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isTransient()Z
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUpdate()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 694
    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->beforeExists()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v6}, Landroid/content/ContentValues;->size()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    move v4, v5

    .line 708
    :goto_0
    return v4

    .line 697
    :cond_1
    iget-object v6, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v6}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 698
    .local v1, key:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v6, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 699
    .local v2, newValue:Ljava/lang/Object;
    iget-object v6, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v6, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 700
    .local v3, oldValue:Ljava/lang/Object;
    if-nez v3, :cond_3

    .line 701
    if-eqz v2, :cond_2

    goto :goto_0

    .line 704
    :cond_3
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    .end local v1           #key:Ljava/lang/String;
    .end local v2           #newValue:Ljava/lang/Object;
    .end local v3           #oldValue:Ljava/lang/Object;
    :cond_4
    move v4, v5

    .line 708
    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 767
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    .line 769
    .local v2, keys:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v3, :cond_0

    .line 770
    iget-object v3, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v3}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 771
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 775
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v3, :cond_1

    .line 776
    iget-object v3, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v3}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 777
    .restart local v0       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 781
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-object v2
.end method

.method public markDeleted()V
    .locals 1

    .prologue
    .line 726
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    .line 727
    return-void
.end method

.method public put(Ljava/lang/String;I)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 749
    invoke-direct {p0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->ensureUpdate()V

    .line 750
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 751
    return-void
.end method

.method public put(Ljava/lang/String;J)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 754
    invoke-direct {p0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->ensureUpdate()V

    .line 755
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 756
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 739
    invoke-direct {p0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->ensureUpdate()V

    .line 740
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    return-void
.end method

.method public put(Ljava/lang/String;[B)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 744
    invoke-direct {p0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->ensureUpdate()V

    .line 745
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 746
    return-void
.end method

.method public putNull(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 759
    invoke-direct {p0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->ensureUpdate()V

    .line 760
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 761
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 918
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 919
    .local v0, loader:Ljava/lang/ClassLoader;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    iput-object v1, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    .line 920
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    iput-object v1, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    .line 921
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mIdColumn:Ljava/lang/String;

    .line 922
    return-void
.end method

.method public setFromTemplate(Z)V
    .locals 0
    .parameter "isFromTemplate"

    .prologue
    .line 653
    iput-boolean p1, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mFromTemplate:Z

    .line 654
    return-void
.end method

.method public setIdColumn(Ljava/lang/String;)V
    .locals 0
    .parameter "idColumn"

    .prologue
    .line 644
    iput-object p1, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mIdColumn:Ljava/lang/String;

    .line 645
    return-void
.end method

.method public subsetEquals(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Z
    .locals 6
    .parameter "other"

    .prologue
    const/4 v4, 0x0

    .line 864
    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 865
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 866
    .local v2, ourValue:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 867
    .local v3, theirValue:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 869
    if-eqz v3, :cond_0

    .line 876
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #ourValue:Ljava/lang/String;
    .end local v3           #theirValue:Ljava/lang/String;
    :goto_0
    return v4

    .line 872
    .restart local v1       #key:Ljava/lang/String;
    .restart local v2       #ourValue:Ljava/lang/String;
    .restart local v3       #theirValue:Ljava/lang/String;
    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    .line 876
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #ourValue:Ljava/lang/String;
    .end local v3           #theirValue:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 839
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 840
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->toString(Ljava/lang/StringBuilder;)V

    .line 841
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString(Ljava/lang/StringBuilder;)V
    .locals 3
    .parameter "builder"

    .prologue
    .line 849
    const-string v2, "{ "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 851
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    const-string v2, "="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    invoke-virtual {p0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 856
    .end local v1           #key:Ljava/lang/String;
    :cond_0
    const-string v2, "}"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 912
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 913
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 914
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mIdColumn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 915
    return-void
.end method
