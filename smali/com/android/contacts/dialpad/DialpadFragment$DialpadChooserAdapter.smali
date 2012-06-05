.class Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter;
.super Landroid/widget/BaseAdapter;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DialpadChooserAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;
    }
.end annotation


# static fields
.field static final DIALPAD_CHOICE_ADD_NEW_CALL:I = 0x67

.field static final DIALPAD_CHOICE_RETURN_TO_CALL:I = 0x66

.field static final DIALPAD_CHOICE_USE_DTMF_DIALPAD:I = 0x65

.field private static final NUM_ITEMS:I = 0x3


# instance fields
.field private mChoiceItems:[Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 1100
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1098
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter;->mChoiceItems:[Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    .line 1102
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1108
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter;->mChoiceItems:[Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    const v3, 0x7f0b0089

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020059

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    const/16 v5, 0x65

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    aput-object v2, v0, v1

    .line 1115
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter;->mChoiceItems:[Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    const/4 v1, 0x1

    new-instance v2, Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    const v3, 0x7f0b008a

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020058

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    const/16 v5, 0x66

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    aput-object v2, v0, v1

    .line 1122
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter;->mChoiceItems:[Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    const/4 v1, 0x2

    new-instance v2, Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    const v3, 0x7f0b008b

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020057

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    const/16 v5, 0x67

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    aput-object v2, v0, v1

    .line 1127
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1130
    const/4 v0, 0x3

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter;->mChoiceItems:[Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 1144
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1153
    if-nez p2, :cond_0

    .line 1154
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04003d

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1157
    :cond_0
    const v2, 0x7f060078

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1158
    .local v1, text:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter;->mChoiceItems:[Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1160
    const v2, 0x7f06001e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1161
    .local v0, icon:Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter;->mChoiceItems:[Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1163
    return-object p2
.end method
