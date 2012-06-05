.class Lcom/android/contacts/list/PhoneNumberPickerFragment$FilterHeaderClickListener;
.super Ljava/lang/Object;
.source "PhoneNumberPickerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/PhoneNumberPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilterHeaderClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/PhoneNumberPickerFragment;


# direct methods
.method private constructor <init>(Lcom/android/contacts/list/PhoneNumberPickerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment$FilterHeaderClickListener;->this$0:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/list/PhoneNumberPickerFragment;Lcom/android/contacts/list/PhoneNumberPickerFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/contacts/list/PhoneNumberPickerFragment$FilterHeaderClickListener;-><init>(Lcom/android/contacts/list/PhoneNumberPickerFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment$FilterHeaderClickListener;->this$0:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/contacts/util/AccountFilterUtil;->startAccountFilterActivityForResult(Landroid/app/Fragment;I)V

    .line 66
    return-void
.end method
