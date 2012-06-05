.class Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;
.super Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
.source "ContactDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SeparatorViewEntry"
.end annotation


# instance fields
.field private mIsInSubSection:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 1128
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;-><init>(I)V

    .line 1125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;->mIsInSubSection:Z

    .line 1129
    return-void
.end method


# virtual methods
.method public isInSubSection()Z
    .locals 1

    .prologue
    .line 1136
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;->mIsInSubSection:Z

    return v0
.end method

.method public setIsInSubSection(Z)V
    .locals 0
    .parameter "isInSubSection"

    .prologue
    .line 1132
    iput-boolean p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;->mIsInSubSection:Z

    .line 1133
    return-void
.end method
