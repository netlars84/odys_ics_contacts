.class public Lcom/android/contacts/list/ContactsUnavailableFragment;
.super Landroid/app/Fragment;
.source "ContactsUnavailableFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAddAccountButton:Landroid/widget/Button;

.field private mCreateContactButton:Landroid/widget/Button;

.field private mImportContactsButton:Landroid/widget/Button;

.field private mListener:Lcom/android/contacts/list/OnContactsUnavailableActionListener;

.field private mMessageView:Landroid/widget/TextView;

.field private mNSecNoContactsMsgResId:I

.field private mNoContactsMsgResId:I

.field private mProgress:Landroid/widget/ProgressBar;

.field private mProviderStatusLoader:Lcom/android/contacts/list/ProviderStatusLoader;

.field private mRetryUpgradeButton:Landroid/widget/Button;

.field private mSecondaryMessageView:Landroid/widget/TextView;

.field private mUninstallAppsButton:Landroid/widget/Button;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 36
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 49
    iput v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mNoContactsMsgResId:I

    .line 50
    iput v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mNSecNoContactsMsgResId:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mListener:Lcom/android/contacts/list/OnContactsUnavailableActionListener;

    if-nez v0, :cond_0

    .line 159
    :goto_0
    return-void

    .line 142
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 147
    :sswitch_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mListener:Lcom/android/contacts/list/OnContactsUnavailableActionListener;

    invoke-interface {v0}, Lcom/android/contacts/list/OnContactsUnavailableActionListener;->onAddAccountAction()V

    goto :goto_0

    .line 144
    :sswitch_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mListener:Lcom/android/contacts/list/OnContactsUnavailableActionListener;

    invoke-interface {v0}, Lcom/android/contacts/list/OnContactsUnavailableActionListener;->onCreateNewContactAction()V

    goto :goto_0

    .line 150
    :sswitch_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mListener:Lcom/android/contacts/list/OnContactsUnavailableActionListener;

    invoke-interface {v0}, Lcom/android/contacts/list/OnContactsUnavailableActionListener;->onImportContactsFromFileAction()V

    goto :goto_0

    .line 153
    :sswitch_3
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mListener:Lcom/android/contacts/list/OnContactsUnavailableActionListener;

    invoke-interface {v0}, Lcom/android/contacts/list/OnContactsUnavailableActionListener;->onFreeInternalStorageAction()V

    goto :goto_0

    .line 156
    :sswitch_4
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mProviderStatusLoader:Lcom/android/contacts/list/ProviderStatusLoader;

    invoke-virtual {v0}, Lcom/android/contacts/list/ProviderStatusLoader;->retryUpgrade()V

    goto :goto_0

    .line 142
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f06007a -> :sswitch_0
        0x7f060097 -> :sswitch_1
        0x7f060098 -> :sswitch_2
        0x7f060099 -> :sswitch_3
        0x7f06009a -> :sswitch_4
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 57
    const v0, 0x7f040032

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mView:Landroid/view/View;

    .line 58
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mView:Landroid/view/View;

    const v1, 0x7f060095

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mView:Landroid/view/View;

    const v1, 0x7f060096

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mSecondaryMessageView:Landroid/widget/TextView;

    .line 60
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mView:Landroid/view/View;

    const v1, 0x7f060097

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mCreateContactButton:Landroid/widget/Button;

    .line 61
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mCreateContactButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mView:Landroid/view/View;

    const v1, 0x7f06007a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mAddAccountButton:Landroid/widget/Button;

    .line 63
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mAddAccountButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mView:Landroid/view/View;

    const v1, 0x7f060098

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mImportContactsButton:Landroid/widget/Button;

    .line 65
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mImportContactsButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mView:Landroid/view/View;

    const v1, 0x7f060099

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mUninstallAppsButton:Landroid/widget/Button;

    .line 67
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mUninstallAppsButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mView:Landroid/view/View;

    const v1, 0x7f06009a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mRetryUpgradeButton:Landroid/widget/Button;

    .line 69
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mRetryUpgradeButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mView:Landroid/view/View;

    const v1, 0x7f06009b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mProgress:Landroid/widget/ProgressBar;

    .line 71
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactsUnavailableFragment;->update()V

    .line 72
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public setMessageText(II)V
    .locals 6
    .parameter "resId"
    .parameter "secResId"

    .prologue
    const/16 v1, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 166
    iput p1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mNoContactsMsgResId:I

    .line 167
    iput p2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mNSecNoContactsMsgResId:I

    .line 168
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mProviderStatusLoader:Lcom/android/contacts/list/ProviderStatusLoader;

    invoke-virtual {v0}, Lcom/android/contacts/list/ProviderStatusLoader;->getProviderStatus()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 171
    if-eq p1, v2, :cond_2

    .line 172
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mNoContactsMsgResId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 173
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 174
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    if-eq p2, v2, :cond_1

    .line 176
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mSecondaryMessageView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mNSecNoContactsMsgResId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 177
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mSecondaryMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 178
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mSecondaryMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mSecondaryMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 183
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mSecondaryMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setOnContactsUnavailableActionListener(Lcom/android/contacts/list/OnContactsUnavailableActionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mListener:Lcom/android/contacts/list/OnContactsUnavailableActionListener;

    .line 78
    return-void
.end method

.method public setProviderStatusLoader(Lcom/android/contacts/list/ProviderStatusLoader;)V
    .locals 0
    .parameter "loader"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mProviderStatusLoader:Lcom/android/contacts/list/ProviderStatusLoader;

    .line 82
    return-void
.end method

.method public update()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 85
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mProviderStatusLoader:Lcom/android/contacts/list/ProviderStatusLoader;

    invoke-virtual {v2}, Lcom/android/contacts/list/ProviderStatusLoader;->getProviderStatus()I

    move-result v1

    .line 86
    .local v1, providerStatus:I
    packed-switch v1, :pswitch_data_0

    .line 135
    :goto_0
    return-void

    .line 88
    :pswitch_0
    iget v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mNoContactsMsgResId:I

    iget v3, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mNSecNoContactsMsgResId:I

    invoke-virtual {p0, v2, v3}, Lcom/android/contacts/list/ContactsUnavailableFragment;->setMessageText(II)V

    .line 89
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mCreateContactButton:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 90
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mAddAccountButton:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 91
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mImportContactsButton:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 92
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mUninstallAppsButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 93
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mRetryUpgradeButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 94
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 98
    :pswitch_1
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    const v3, 0x7f0b0175

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 99
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 100
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mCreateContactButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 102
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mAddAccountButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 103
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mImportContactsButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 104
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mUninstallAppsButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 105
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mRetryUpgradeButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 106
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 110
    :pswitch_2
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    const v3, 0x7f0b0176

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 111
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 112
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mCreateContactButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 114
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mAddAccountButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 115
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mImportContactsButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 116
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mUninstallAppsButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 117
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mRetryUpgradeButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 118
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    .line 122
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactsUnavailableFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0177

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mProviderStatusLoader:Lcom/android/contacts/list/ProviderStatusLoader;

    invoke-virtual {v5}, Lcom/android/contacts/list/ProviderStatusLoader;->getProviderStatusData()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, message:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 126
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mCreateContactButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 128
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mAddAccountButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 129
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mImportContactsButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 130
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mUninstallAppsButton:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 131
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mRetryUpgradeButton:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 132
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    .line 86
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
