.class Lcom/layar/util/UriHelper$LocationUpdater$1;
.super Ljava/lang/Object;
.source "UriHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/util/UriHelper$LocationUpdater;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/layar/util/UriHelper$LocationUpdater;


# direct methods
.method constructor <init>(Lcom/layar/util/UriHelper$LocationUpdater;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/util/UriHelper$LocationUpdater$1;->this$1:Lcom/layar/util/UriHelper$LocationUpdater;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const-wide/16 v11, 0x1388

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/layar/util/UriHelper$LocationUpdater$1;->this$1:Lcom/layar/util/UriHelper$LocationUpdater;

    invoke-static {v0}, Lcom/layar/util/UriHelper$LocationUpdater;->access$2(Lcom/layar/util/UriHelper$LocationUpdater;)Lcom/layar/util/UriHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/layar/util/UriHelper;->access$0(Lcom/layar/util/UriHelper;)Lcom/layar/util/SensorHelper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/layar/util/UriHelper$LocationUpdater$1;->this$1:Lcom/layar/util/UriHelper$LocationUpdater;

    const-wide/16 v1, 0x1388

    invoke-static {v0, v1, v2}, Lcom/layar/util/UriHelper$LocationUpdater;->access$0(Lcom/layar/util/UriHelper$LocationUpdater;J)V

    .line 120
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/layar/util/UriHelper$LocationUpdater$1;->this$1:Lcom/layar/util/UriHelper$LocationUpdater;

    invoke-static {v0}, Lcom/layar/util/UriHelper$LocationUpdater;->access$2(Lcom/layar/util/UriHelper$LocationUpdater;)Lcom/layar/util/UriHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/layar/util/UriHelper;->access$0(Lcom/layar/util/UriHelper;)Lcom/layar/util/SensorHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layar/util/SensorHelper;->getCurrentLocation()Landroid/location/Location;

    move-result-object v10

    .line 84
    .local v10, location:Landroid/location/Location;
    if-nez v10, :cond_1

    .line 85
    iget-object v0, p0, Lcom/layar/util/UriHelper$LocationUpdater$1;->this$1:Lcom/layar/util/UriHelper$LocationUpdater;

    const-wide/16 v1, 0x1388

    invoke-static {v0, v1, v2}, Lcom/layar/util/UriHelper$LocationUpdater;->access$0(Lcom/layar/util/UriHelper$LocationUpdater;J)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 111
    .end local v10           #location:Landroid/location/Location;
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 114
    .local v9, e:Ljava/lang/IllegalArgumentException;
    iget-object v0, p0, Lcom/layar/util/UriHelper$LocationUpdater$1;->this$1:Lcom/layar/util/UriHelper$LocationUpdater;

    invoke-virtual {v0}, Lcom/layar/util/UriHelper$LocationUpdater;->cancel()V

    goto :goto_0

    .line 91
    .end local v9           #e:Ljava/lang/IllegalArgumentException;
    .restart local v10       #location:Landroid/location/Location;
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/layar/util/UriHelper$LocationUpdater$1;->this$1:Lcom/layar/util/UriHelper$LocationUpdater;

    invoke-static {v0}, Lcom/layar/util/UriHelper$LocationUpdater;->access$2(Lcom/layar/util/UriHelper$LocationUpdater;)Lcom/layar/util/UriHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/layar/util/UriHelper;->access$1(Lcom/layar/util/UriHelper;)Landroid/location/Geocoder;

    move-result-object v0

    .line 92
    invoke-virtual {v10}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v10}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    const/4 v5, 0x1

    .line 91
    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v7

    .line 93
    .local v7, addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    if-eqz v7, :cond_6

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 94
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/Address;

    .line 95
    .local v6, address:Landroid/location/Address;
    invoke-virtual {v6}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v8

    .line 96
    .local v8, cc:Ljava/lang/String;
    iget-object v0, p0, Lcom/layar/util/UriHelper$LocationUpdater$1;->this$1:Lcom/layar/util/UriHelper$LocationUpdater;

    invoke-static {v0}, Lcom/layar/util/UriHelper$LocationUpdater;->access$2(Lcom/layar/util/UriHelper$LocationUpdater;)Lcom/layar/util/UriHelper;

    move-result-object v0

    iget-object v0, v0, Lcom/layar/util/UriHelper;->localCountryCode:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/layar/util/UriHelper$LocationUpdater$1;->this$1:Lcom/layar/util/UriHelper$LocationUpdater;

    invoke-static {v0}, Lcom/layar/util/UriHelper$LocationUpdater;->access$2(Lcom/layar/util/UriHelper$LocationUpdater;)Lcom/layar/util/UriHelper;

    move-result-object v0

    iget-object v0, v0, Lcom/layar/util/UriHelper;->localCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/layar/util/UriHelper$LocationUpdater$1;->this$1:Lcom/layar/util/UriHelper$LocationUpdater;

    invoke-static {v0}, Lcom/layar/util/UriHelper$LocationUpdater;->access$2(Lcom/layar/util/UriHelper$LocationUpdater;)Lcom/layar/util/UriHelper;

    move-result-object v0

    iput-object v8, v0, Lcom/layar/util/UriHelper;->localCountryCode:Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/layar/util/UriHelper$LocationUpdater$1;->this$1:Lcom/layar/util/UriHelper$LocationUpdater;

    invoke-static {v0}, Lcom/layar/util/UriHelper$LocationUpdater;->access$2(Lcom/layar/util/UriHelper$LocationUpdater;)Lcom/layar/util/UriHelper;

    move-result-object v0

    iget-boolean v0, v0, Lcom/layar/util/UriHelper;->isCountryCodeSet:Z

    if-nez v0, :cond_3

    .line 99
    iget-object v0, p0, Lcom/layar/util/UriHelper$LocationUpdater$1;->this$1:Lcom/layar/util/UriHelper$LocationUpdater;

    invoke-static {v0}, Lcom/layar/util/UriHelper$LocationUpdater;->access$2(Lcom/layar/util/UriHelper$LocationUpdater;)Lcom/layar/util/UriHelper;

    move-result-object v0

    iput-object v8, v0, Lcom/layar/util/UriHelper;->countryCode:Ljava/lang/String;

    .line 100
    :cond_3
    iget-object v0, p0, Lcom/layar/util/UriHelper$LocationUpdater$1;->this$1:Lcom/layar/util/UriHelper$LocationUpdater;

    invoke-static {v0}, Lcom/layar/util/UriHelper$LocationUpdater;->access$2(Lcom/layar/util/UriHelper$LocationUpdater;)Lcom/layar/util/UriHelper;

    move-result-object v0

    invoke-virtual {v6}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/layar/util/UriHelper;->localCountryName:Ljava/lang/String;

    .line 102
    :cond_4
    iget-object v0, p0, Lcom/layar/util/UriHelper$LocationUpdater$1;->this$1:Lcom/layar/util/UriHelper$LocationUpdater;

    invoke-static {v0}, Lcom/layar/util/UriHelper$LocationUpdater;->access$2(Lcom/layar/util/UriHelper$LocationUpdater;)Lcom/layar/util/UriHelper;

    move-result-object v0

    iget-object v0, v0, Lcom/layar/util/UriHelper;->localCountryName:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 103
    iget-object v0, p0, Lcom/layar/util/UriHelper$LocationUpdater$1;->this$1:Lcom/layar/util/UriHelper$LocationUpdater;

    invoke-static {v0}, Lcom/layar/util/UriHelper$LocationUpdater;->access$2(Lcom/layar/util/UriHelper$LocationUpdater;)Lcom/layar/util/UriHelper;

    move-result-object v0

    invoke-virtual {v6}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/layar/util/UriHelper;->localCountryName:Ljava/lang/String;

    .line 107
    :cond_5
    invoke-static {}, Lcom/layar/util/UriHelper;->access$2()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Country code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/layar/util/UriHelper$LocationUpdater$1;->this$1:Lcom/layar/util/UriHelper$LocationUpdater;

    invoke-static {v2}, Lcom/layar/util/UriHelper$LocationUpdater;->access$2(Lcom/layar/util/UriHelper$LocationUpdater;)Lcom/layar/util/UriHelper;

    move-result-object v2

    iget-object v2, v2, Lcom/layar/util/UriHelper;->countryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/layar/util/UriHelper$LocationUpdater$1;->this$1:Lcom/layar/util/UriHelper$LocationUpdater;

    invoke-virtual {v0}, Lcom/layar/util/UriHelper$LocationUpdater;->cancel()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 115
    .end local v6           #address:Landroid/location/Address;
    .end local v7           #addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .end local v8           #cc:Ljava/lang/String;
    .end local v10           #location:Landroid/location/Location;
    :catch_1
    move-exception v0

    move-object v9, v0

    .line 118
    .local v9, e:Ljava/io/IOException;
    iget-object v0, p0, Lcom/layar/util/UriHelper$LocationUpdater$1;->this$1:Lcom/layar/util/UriHelper$LocationUpdater;

    invoke-static {v0, v11, v12}, Lcom/layar/util/UriHelper$LocationUpdater;->access$0(Lcom/layar/util/UriHelper$LocationUpdater;J)V

    goto/16 :goto_0

    .line 110
    .end local v9           #e:Ljava/io/IOException;
    .restart local v7       #addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .restart local v10       #location:Landroid/location/Location;
    :cond_6
    :try_start_2
    iget-object v0, p0, Lcom/layar/util/UriHelper$LocationUpdater$1;->this$1:Lcom/layar/util/UriHelper$LocationUpdater;

    const-wide/16 v1, 0x1388

    invoke-static {v0, v1, v2}, Lcom/layar/util/UriHelper$LocationUpdater;->access$0(Lcom/layar/util/UriHelper$LocationUpdater;J)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method
