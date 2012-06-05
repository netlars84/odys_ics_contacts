.class public abstract Lcom/android/contacts/ContactPhotoManager;
.super Ljava/lang/Object;
.source "ContactPhotoManager.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ContactPhotoManager$1;,
        Lcom/android/contacts/ContactPhotoManager$BlankDefaultImageProvider;,
        Lcom/android/contacts/ContactPhotoManager$AvatarDefaultImageProvider;,
        Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;
    }
.end annotation


# static fields
.field public static final CONTACT_PHOTO_SERVICE:Ljava/lang/String; = "contactPhotos"

.field static final DEBUG:Z = false

.field public static final DEFAULT_AVATER:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider; = null

.field public static final DEFAULT_BLANK:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider; = null

.field static final TAG:Ljava/lang/String; = "ContactPhotoManager"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 101
    new-instance v0, Lcom/android/contacts/ContactPhotoManager$AvatarDefaultImageProvider;

    invoke-direct {v0, v1}, Lcom/android/contacts/ContactPhotoManager$AvatarDefaultImageProvider;-><init>(Lcom/android/contacts/ContactPhotoManager$1;)V

    sput-object v0, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_AVATER:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

    .line 103
    new-instance v0, Lcom/android/contacts/ContactPhotoManager$BlankDefaultImageProvider;

    invoke-direct {v0, v1}, Lcom/android/contacts/ContactPhotoManager$BlankDefaultImageProvider;-><init>(Lcom/android/contacts/ContactPhotoManager$1;)V

    sput-object v0, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_BLANK:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    return-void
.end method

.method public static declared-synchronized createContactPhotoManager(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 121
    const-class v1, Lcom/android/contacts/ContactPhotoManager;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/android/contacts/ContactPhotoManagerImpl;

    invoke-direct {v0, p0}, Lcom/android/contacts/ContactPhotoManagerImpl;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getDefaultAvatarResId(ZZ)I
    .locals 1
    .parameter "hires"
    .parameter "darkTheme"

    .prologue
    .line 70
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const v0, 0x7f02004f

    .line 73
    :goto_0
    return v0

    .line 71
    :cond_0
    if-eqz p0, :cond_1

    const v0, 0x7f020050

    goto :goto_0

    .line 72
    :cond_1
    if-eqz p1, :cond_2

    const v0, 0x7f020051

    goto :goto_0

    .line 73
    :cond_2
    const v0, 0x7f020052

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;
    .locals 5
    .parameter "context"

    .prologue
    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 111
    .local v0, applicationContext:Landroid/content/Context;
    const-string v2, "contactPhotos"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactPhotoManager;

    .line 113
    .local v1, service:Lcom/android/contacts/ContactPhotoManager;
    if-nez v1, :cond_0

    .line 114
    invoke-static {v0}, Lcom/android/contacts/ContactPhotoManager;->createContactPhotoManager(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v1

    .line 115
    const-string v2, "ContactPhotoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No contact photo service in context: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    return-object v1
.end method


# virtual methods
.method public final loadPhoto(Landroid/widget/ImageView;JZZ)V
    .locals 7
    .parameter "view"
    .parameter "photoId"
    .parameter "hires"
    .parameter "darkTheme"

    .prologue
    .line 137
    sget-object v6, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_AVATER:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;JZZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;)V

    .line 138
    return-void
.end method

.method public abstract loadPhoto(Landroid/widget/ImageView;JZZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;)V
.end method

.method public final loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;ZZ)V
    .locals 6
    .parameter "view"
    .parameter "photoUri"
    .parameter "hires"
    .parameter "darkTheme"

    .prologue
    .line 153
    sget-object v5, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_AVATER:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;ZZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;)V

    .line 154
    return-void
.end method

.method public abstract loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;ZZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;)V
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 188
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0
    .parameter "level"

    .prologue
    .line 198
    return-void
.end method

.method public abstract pause()V
.end method

.method public abstract preloadPhotosInBackground()V
.end method

.method public abstract refreshCache()V
.end method

.method public abstract removePhoto(Landroid/widget/ImageView;)V
.end method

.method public abstract resume()V
.end method
