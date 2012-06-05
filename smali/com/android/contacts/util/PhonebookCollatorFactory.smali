.class public final Lcom/android/contacts/util/PhonebookCollatorFactory;
.super Ljava/lang/Object;
.source "PhonebookCollatorFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getCollator()Ljava/text/Collator;
    .locals 4

    .prologue
    .line 28
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 29
    .local v0, defaultLocale:Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, defaultLocaleString:Ljava/lang/String;
    const-string v3, "ja"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ja_JP"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 36
    :cond_0
    new-instance v2, Ljava/util/Locale;

    const-string v3, "ja@collation=phonebook"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 41
    .local v2, locale:Ljava/util/Locale;
    :goto_0
    invoke-static {v2}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v3

    return-object v3

    .line 38
    .end local v2           #locale:Ljava/util/Locale;
    :cond_1
    move-object v2, v0

    .restart local v2       #locale:Ljava/util/Locale;
    goto :goto_0
.end method
