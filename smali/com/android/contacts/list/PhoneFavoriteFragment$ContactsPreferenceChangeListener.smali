.class Lcom/android/contacts/list/PhoneFavoriteFragment$ContactsPreferenceChangeListener;
.super Ljava/lang/Object;
.source "PhoneFavoriteFragment.java"

# interfaces
.implements Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/PhoneFavoriteFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactsPreferenceChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/PhoneFavoriteFragment;


# direct methods
.method private constructor <init>(Lcom/android/contacts/list/PhoneFavoriteFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment$ContactsPreferenceChangeListener;->this$0:Lcom/android/contacts/list/PhoneFavoriteFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/list/PhoneFavoriteFragment;Lcom/android/contacts/list/PhoneFavoriteFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/android/contacts/list/PhoneFavoriteFragment$ContactsPreferenceChangeListener;-><init>(Lcom/android/contacts/list/PhoneFavoriteFragment;)V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment$ContactsPreferenceChangeListener;->this$0:Lcom/android/contacts/list/PhoneFavoriteFragment;

    #calls: Lcom/android/contacts/list/PhoneFavoriteFragment;->loadContactsPreferences()Z
    invoke-static {v0}, Lcom/android/contacts/list/PhoneFavoriteFragment;->access$1000(Lcom/android/contacts/list/PhoneFavoriteFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment$ContactsPreferenceChangeListener;->this$0:Lcom/android/contacts/list/PhoneFavoriteFragment;

    #calls: Lcom/android/contacts/list/PhoneFavoriteFragment;->requestReloadAllContacts()V
    invoke-static {v0}, Lcom/android/contacts/list/PhoneFavoriteFragment;->access$1100(Lcom/android/contacts/list/PhoneFavoriteFragment;)V

    .line 157
    :cond_0
    return-void
.end method
