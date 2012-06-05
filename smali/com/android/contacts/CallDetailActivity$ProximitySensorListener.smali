.class Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"

# interfaces
.implements Lcom/android/contacts/ProximitySensorManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/CallDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProximitySensorListener"
.end annotation


# instance fields
.field private final mBlankRunnable:Ljava/lang/Runnable;

.field private final mUnblankRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/contacts/CallDetailActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/CallDetailActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;->this$0:Lcom/android/contacts/CallDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v0, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener$1;-><init>(Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;)V

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;->mBlankRunnable:Ljava/lang/Runnable;

    .line 145
    new-instance v0, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener$2;-><init>(Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;)V

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;->mUnblankRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/CallDetailActivity;Lcom/android/contacts/CallDetailActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;-><init>(Lcom/android/contacts/CallDetailActivity;)V

    return-void
.end method

.method private declared-synchronized postDelayed(Ljava/lang/Runnable;J)V
    .locals 3
    .parameter "runnable"
    .parameter "delayMillis"

    .prologue
    .line 179
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;->this$0:Lcom/android/contacts/CallDetailActivity;

    const v2, 0x7f060036

    invoke-virtual {v1, v2}, Lcom/android/contacts/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 180
    .local v0, blankView:Landroid/view/View;
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    monitor-exit p0

    return-void

    .line 179
    .end local v0           #blankView:Landroid/view/View;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized clearPendingRequests()V
    .locals 3

    .prologue
    .line 168
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;->this$0:Lcom/android/contacts/CallDetailActivity;

    const v2, 0x7f060036

    invoke-virtual {v1, v2}, Lcom/android/contacts/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 169
    .local v0, blankView:Landroid/view/View;
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;->mBlankRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 170
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;->mUnblankRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    monitor-exit p0

    return-void

    .line 168
    .end local v0           #blankView:Landroid/view/View;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onFar()V
    .locals 3

    .prologue
    .line 162
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;->clearPendingRequests()V

    .line 163
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;->mUnblankRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-direct {p0, v0, v1, v2}, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;->postDelayed(Ljava/lang/Runnable;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    monitor-exit p0

    return-void

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onNear()V
    .locals 3

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;->clearPendingRequests()V

    .line 157
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;->mBlankRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-direct {p0, v0, v1, v2}, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;->postDelayed(Ljava/lang/Runnable;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    monitor-exit p0

    return-void

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
