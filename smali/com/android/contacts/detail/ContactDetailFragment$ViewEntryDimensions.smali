.class Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;
.super Ljava/lang/Object;
.source "ContactDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewEntryDimensions"
.end annotation


# instance fields
.field private final mPaddingBottom:I

.field private final mPaddingLeft:I

.field private final mPaddingRight:I

.field private final mPaddingTop:I

.field private final mWidePaddingLeft:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 2
    .parameter "resources"

    .prologue
    .line 2084
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2085
    const v0, 0x7f080019

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->mPaddingLeft:I

    .line 2087
    const v0, 0x7f08001a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->mPaddingTop:I

    .line 2089
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->mPaddingLeft:I

    const v1, 0x7f080018

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    const v1, 0x7f08001c

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->mWidePaddingLeft:I

    .line 2092
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->mPaddingLeft:I

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->mPaddingRight:I

    .line 2093
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->mPaddingTop:I

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->mPaddingBottom:I

    .line 2094
    return-void
.end method


# virtual methods
.method public getPaddingBottom()I
    .locals 1

    .prologue
    .line 2113
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->mPaddingBottom:I

    return v0
.end method

.method public getPaddingLeft()I
    .locals 1

    .prologue
    .line 2101
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->mPaddingLeft:I

    return v0
.end method

.method public getPaddingRight()I
    .locals 1

    .prologue
    .line 2105
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->mPaddingRight:I

    return v0
.end method

.method public getPaddingTop()I
    .locals 1

    .prologue
    .line 2109
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->mPaddingTop:I

    return v0
.end method

.method public getWidePaddingLeft()I
    .locals 1

    .prologue
    .line 2097
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->mWidePaddingLeft:I

    return v0
.end method
