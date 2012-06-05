.class public Lcom/android/contacts/util/HtmlUtils;
.super Ljava/lang/Object;
.source "HtmlUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/util/HtmlUtils$StreamItemQuoteSpan;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    return-void
.end method

.method public static fromHtml(Landroid/content/Context;Ljava/lang/String;)Landroid/text/Spanned;
    .locals 2
    .parameter "context"
    .parameter "text"

    .prologue
    .line 45
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    const/4 v1, 0x0

    .line 49
    :goto_0
    return-object v1

    .line 48
    :cond_0
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 49
    .local v0, spanned:Landroid/text/Spanned;
    invoke-static {p0, v0}, Lcom/android/contacts/util/HtmlUtils;->postprocess(Landroid/content/Context;Landroid/text/Spanned;)Landroid/text/Spanned;

    move-result-object v1

    goto :goto_0
.end method

.method public static fromHtml(Landroid/content/Context;Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "context"
    .parameter "text"
    .parameter "imageGetter"
    .parameter "tagHandler"

    .prologue
    .line 58
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const/4 v0, 0x0

    .line 61
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, p2, p3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/contacts/util/HtmlUtils;->postprocess(Landroid/content/Context;Landroid/text/Spanned;)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_0
.end method

.method static postprocess(Landroid/content/Context;Landroid/text/Spanned;)Landroid/text/Spanned;
    .locals 14
    .parameter "context"
    .parameter "original"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 70
    if-nez p1, :cond_1

    .line 71
    const/4 p1, 0x0

    .line 123
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 73
    .restart local p1
    :cond_1
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v5

    .line 74
    .local v5, length:I
    if-eqz v5, :cond_0

    .line 81
    instance-of v10, p1, Landroid/text/SpannableStringBuilder;

    if-eqz v10, :cond_2

    move-object v0, p1

    .line 82
    check-cast v0, Landroid/text/SpannableStringBuilder;

    .line 87
    .local v0, builder:Landroid/text/SpannableStringBuilder;
    :goto_1
    const-class v10, Landroid/text/style/QuoteSpan;

    invoke-virtual {v0, v13, v5, v10}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/QuoteSpan;

    .line 88
    .local v6, quoteSpans:[Landroid/text/style/QuoteSpan;
    if-eqz v6, :cond_3

    array-length v10, v6

    if-eqz v10, :cond_3

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 90
    .local v7, resources:Landroid/content/res/Resources;
    const v10, 0x7f070017

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 91
    .local v1, color:I
    const v10, 0x7f080058

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 92
    .local v9, width:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    array-length v10, v6

    if-ge v3, v10, :cond_3

    .line 93
    aget-object v10, v6, v3

    new-instance v11, Lcom/android/contacts/util/HtmlUtils$StreamItemQuoteSpan;

    invoke-direct {v11, v1, v9}, Lcom/android/contacts/util/HtmlUtils$StreamItemQuoteSpan;-><init>(II)V

    invoke-static {v0, v10, v11}, Lcom/android/contacts/util/HtmlUtils;->replaceSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 92
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 84
    .end local v0           #builder:Landroid/text/SpannableStringBuilder;
    .end local v1           #color:I
    .end local v3           #i:I
    .end local v6           #quoteSpans:[Landroid/text/style/QuoteSpan;
    .end local v7           #resources:Landroid/content/res/Resources;
    .end local v9           #width:I
    :cond_2
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .restart local v0       #builder:Landroid/text/SpannableStringBuilder;
    goto :goto_1

    .line 97
    .restart local v6       #quoteSpans:[Landroid/text/style/QuoteSpan;
    :cond_3
    const-class v10, Landroid/text/style/ImageSpan;

    invoke-virtual {v0, v13, v5, v10}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/ImageSpan;

    .line 98
    .local v4, imageSpans:[Landroid/text/style/ImageSpan;
    if-eqz v4, :cond_4

    .line 99
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_3
    array-length v10, v4

    if-ge v3, v10, :cond_4

    .line 100
    aget-object v8, v4, v3

    .line 101
    .local v8, span:Landroid/text/style/ImageSpan;
    new-instance v10, Landroid/text/style/ImageSpan;

    invoke-virtual {v8}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    const/4 v12, 0x1

    invoke-direct {v10, v11, v12}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-static {v0, v8, v10}, Lcom/android/contacts/util/HtmlUtils;->replaceSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 99
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 108
    .end local v3           #i:I
    .end local v8           #span:Landroid/text/style/ImageSpan;
    :cond_4
    move v2, v5

    .line 109
    .local v2, end:I
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    add-int/lit8 v3, v10, -0x1

    .restart local v3       #i:I
    :goto_4
    if-ltz v3, :cond_5

    .line 110
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v10

    const/16 v11, 0xa

    if-eq v10, v11, :cond_6

    .line 117
    :cond_5
    if-ne v2, v5, :cond_7

    move-object p1, v0

    .line 118
    goto :goto_0

    .line 113
    :cond_6
    move v2, v3

    .line 109
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 123
    :cond_7
    new-instance p1, Landroid/text/SpannableStringBuilder;

    .end local p1
    invoke-direct {p1, v0, v13, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    goto/16 :goto_0
.end method

.method private static replaceSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .parameter "builder"
    .parameter "originalSpan"
    .parameter "newSpan"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p0, p2, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 135
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 136
    return-void
.end method
