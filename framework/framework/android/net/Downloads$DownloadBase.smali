.class public Landroid/net/Downloads$DownloadBase;
.super Ljava/lang/Object;
.source "Downloads.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Downloads;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadBase"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startDownloadByUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 13
    .parameter "context"
    .parameter "url"
    .parameter "cookieData"
    .parameter "showDownload"
    .parameter "downloadDestination"
    .parameter "allowRoaming"
    .parameter "skipIntegrityCheck"
    .parameter "title"
    .parameter "notification_package"
    .parameter "notification_class"
    .parameter "notification_extras"

    .prologue
    .line 490
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 493
    .local p0, cr:Landroid/content/ContentResolver;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 494
    .local v0, values:Landroid/content/ContentValues;
    const-string/jumbo v1, "uri"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const-string v1, "cookiedata"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const-string/jumbo p2, "visibility"

    .end local p2
    if-eqz p3, :cond_6c

    const/4 p3, 0x0

    .end local p3
    :goto_1a
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 499
    if-eqz p7, :cond_29

    .line 500
    const-string/jumbo p2, "title"

    invoke-virtual {v0, p2, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    :cond_29
    const-string p2, "entity"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    const/4 p1, 0x0

    .line 508
    .local p1, destination:I
    packed-switch p4, :pswitch_data_78

    .line 525
    :goto_32
    const-string p2, "destination"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .end local p1           #destination:I
    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 526
    const-string p1, "no_integrity"

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 528
    if-eqz p8, :cond_59

    if-eqz p9, :cond_59

    .line 529
    const-string p1, "notificationpackage"

    invoke-virtual {v0, p1, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    const-string p1, "notificationclass"

    invoke-virtual {v0, p1, p9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    if-eqz p10, :cond_59

    .line 535
    const-string p1, "notificationextras"

    invoke-virtual {v0, p1, p10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    :cond_59
    sget-object p1, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p2

    .line 542
    .local p2, downloadUri:Landroid/net/Uri;
    const-wide/16 p0, -0x1

    .line 543
    .local p0, downloadId:J
    if-eqz p2, :cond_6b

    .line 544
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    .end local p0           #downloadId:J
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    .line 546
    .restart local p0       #downloadId:J
    :cond_6b
    return-wide p0

    .line 496
    .end local p2           #downloadUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, url:Ljava/lang/String;
    .restart local p3
    :cond_6c
    const/4 p3, 0x2

    goto :goto_1a

    .line 510
    .end local p3
    .local p1, destination:I
    :pswitch_6e
    const/4 p1, 0x0

    .line 511
    goto :goto_32

    .line 513
    :pswitch_70
    if-eqz p5, :cond_74

    .line 514
    const/4 p1, 0x1

    goto :goto_32

    .line 516
    :cond_74
    const/4 p1, 0x3

    .line 519
    goto :goto_32

    .line 521
    :pswitch_76
    const/4 p1, 0x2

    goto :goto_32

    .line 508
    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_6e
        :pswitch_70
        :pswitch_76
    .end packed-switch
.end method
