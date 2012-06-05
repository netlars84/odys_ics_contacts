.class public abstract Lcom/android/contacts/list/ContactListFilterController;
.super Ljava/lang/Object;
.source "ContactListFilterController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;
    }
.end annotation


# static fields
.field public static final CONTACT_LIST_FILTER_SERVICE:Ljava/lang/String; = "contactListFilter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static createContactListFilterController(Landroid/content/Context;)Lcom/android/contacts/list/ContactListFilterController;
    .locals 1
    .parameter "context"

    .prologue
    .line 46
    new-instance v0, Lcom/android/contacts/list/ContactListFilterControllerImpl;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactListFilterControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/contacts/list/ContactListFilterController;
    .locals 2
    .parameter "context"

    .prologue
    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "contactListFilter"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListFilterController;

    return-object v0
.end method


# virtual methods
.method public abstract addListener(Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;)V
.end method

.method public abstract checkFilterValidity(Z)V
.end method

.method public abstract getFilter()Lcom/android/contacts/list/ContactListFilter;
.end method

.method public abstract removeListener(Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;)V
.end method

.method public abstract selectCustomFilter()V
.end method

.method public abstract setContactListFilter(Lcom/android/contacts/list/ContactListFilter;Z)V
.end method
