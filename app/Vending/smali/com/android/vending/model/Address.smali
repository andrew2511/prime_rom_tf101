.class public Lcom/android/vending/model/Address;
.super Ljava/lang/Object;
.source "Address.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mProto:Lcom/google/common/io/protocol/ProtoBuf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/android/vending/model/Address;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/vending/model/Address;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/android/vending/model/ApiDefsMessageTypes;->ADDRESS_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    iput-object v0, p0, Lcom/android/vending/model/Address;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/android/i18n/addressinput/AddressData;)V
    .locals 7
    .parameter "data"

    .prologue
    .line 35
    invoke-virtual {p1}, Lcom/android/i18n/addressinput/AddressData;->getAddressLine1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/i18n/addressinput/AddressData;->getAddressLine2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/i18n/addressinput/AddressData;->getLocality()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/i18n/addressinput/AddressData;->getAdministrativeArea()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/i18n/addressinput/AddressData;->getPostalCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/i18n/addressinput/AddressData;->getPostalCountry()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/vending/model/Address;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "address1"
    .parameter "address2"
    .parameter "city"
    .parameter "state"
    .parameter "zipCode"
    .parameter "countryCode"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/android/vending/model/ApiDefsMessageTypes;->ADDRESS_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    iput-object v0, p0, Lcom/android/vending/model/Address;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    .line 26
    iget-object v0, p0, Lcom/android/vending/model/Address;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/android/vending/model/Address;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/android/vending/model/Address;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p3}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/android/vending/model/Address;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p4}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/android/vending/model/Address;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p5}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/android/vending/model/Address;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p6}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 32
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 23
    .parameter "o"

    .prologue
    .line 168
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_0

    .line 169
    const/16 v21, 0x1

    .line 233
    :goto_0
    return v21

    .line 172
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_2

    .line 173
    :cond_1
    const/16 v21, 0x0

    goto :goto_0

    .line 176
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/vending/model/Address;->getAddress1()Ljava/lang/String;

    move-result-object v12

    .line 177
    .local v12, address1:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/vending/model/Address;->getAddress2()Ljava/lang/String;

    move-result-object v13

    .line 178
    .local v13, address2:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/vending/model/Address;->getCity()Ljava/lang/String;

    move-result-object v14

    .line 179
    .local v14, city:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/vending/model/Address;->getState()Ljava/lang/String;

    move-result-object v19

    .line 180
    .local v19, state:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/vending/model/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v18

    .line 181
    .local v18, postalCode:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/vending/model/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v15

    .line 182
    .local v15, country:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/vending/model/Address;->getName()Ljava/lang/String;

    move-result-object v16

    .line 183
    .local v16, name:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/vending/model/Address;->getType()Ljava/lang/String;

    move-result-object v20

    .line 184
    .local v20, type:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/vending/model/Address;->getPhone()Ljava/lang/String;

    move-result-object v17

    .line 186
    .local v17, phone:Ljava/lang/String;
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/vending/model/Address;

    move-object v2, v0

    .line 187
    .local v2, a2:Lcom/android/vending/model/Address;
    invoke-virtual {v2}, Lcom/android/vending/model/Address;->getAddress1()Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, a2Address1:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/vending/model/Address;->getAddress2()Ljava/lang/String;

    move-result-object v4

    .line 189
    .local v4, a2Address2:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/vending/model/Address;->getCity()Ljava/lang/String;

    move-result-object v5

    .line 190
    .local v5, a2City:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/vending/model/Address;->getState()Ljava/lang/String;

    move-result-object v10

    .line 191
    .local v10, a2State:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/vending/model/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v9

    .line 192
    .local v9, a2PostalCode:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/vending/model/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v6

    .line 193
    .local v6, a2Country:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/vending/model/Address;->getName()Ljava/lang/String;

    move-result-object v7

    .line 194
    .local v7, a2Name:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/vending/model/Address;->getType()Ljava/lang/String;

    move-result-object v11

    .line 195
    .local v11, a2Type:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/vending/model/Address;->getPhone()Ljava/lang/String;

    move-result-object v8

    .line 197
    .local v8, a2Phone:Ljava/lang/String;
    if-nez v12, :cond_4

    if-eqz v3, :cond_5

    .line 198
    :cond_3
    const/16 v21, 0x0

    goto :goto_0

    .line 197
    :cond_4
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 201
    :cond_5
    if-nez v13, :cond_7

    if-eqz v4, :cond_8

    .line 202
    :cond_6
    const/16 v21, 0x0

    goto :goto_0

    .line 201
    :cond_7
    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 205
    :cond_8
    if-nez v14, :cond_a

    if-eqz v5, :cond_b

    .line 206
    :cond_9
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 205
    :cond_a
    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 209
    :cond_b
    if-nez v19, :cond_d

    if-eqz v10, :cond_e

    .line 210
    :cond_c
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 209
    :cond_d
    move-object/from16 v0, v19

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 213
    :cond_e
    if-nez v18, :cond_10

    if-eqz v9, :cond_11

    .line 214
    :cond_f
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 213
    :cond_10
    move-object/from16 v0, v18

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 217
    :cond_11
    if-nez v15, :cond_13

    if-eqz v6, :cond_14

    .line 218
    :cond_12
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 217
    :cond_13
    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_12

    .line 221
    :cond_14
    if-nez v16, :cond_16

    if-eqz v7, :cond_17

    .line 222
    :cond_15
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 221
    :cond_16
    move-object/from16 v0, v16

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_15

    .line 225
    :cond_17
    if-nez v20, :cond_19

    if-eqz v11, :cond_1a

    .line 226
    :cond_18
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 225
    :cond_19
    move-object/from16 v0, v20

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_18

    .line 229
    :cond_1a
    if-nez v17, :cond_1c

    if-eqz v8, :cond_1d

    .line 230
    :cond_1b
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 229
    :cond_1c
    move-object/from16 v0, v17

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1b

    .line 233
    :cond_1d
    const/16 v21, 0x1

    goto/16 :goto_0
.end method

.method public getAddress1()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/vending/model/Address;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAddress2()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/vending/model/Address;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/vending/model/Address;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/vending/model/Address;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/vending/model/Address;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/vending/model/Address;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/vending/model/Address;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/vending/model/Address;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/vending/model/Address;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 14

    .prologue
    const/4 v13, 0x7

    .line 238
    invoke-virtual {p0}, Lcom/android/vending/model/Address;->getAddress1()Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, address1:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/vending/model/Address;->getAddress2()Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, address2:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/vending/model/Address;->getCity()Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, city:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/vending/model/Address;->getState()Ljava/lang/String;

    move-result-object v9

    .line 242
    .local v9, state:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/vending/model/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v6

    .line 243
    .local v6, postalCode:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/vending/model/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    .line 244
    .local v3, country:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/vending/model/Address;->getName()Ljava/lang/String;

    move-result-object v4

    .line 245
    .local v4, name:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/vending/model/Address;->getType()Ljava/lang/String;

    move-result-object v10

    .line 246
    .local v10, type:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/vending/model/Address;->getPhone()Ljava/lang/String;

    move-result-object v5

    .line 248
    .local v5, phone:Ljava/lang/String;
    const/16 v7, 0x25

    .line 249
    .local v7, prime:I
    const/16 v8, 0x11

    .line 250
    .local v8, result:I
    mul-int/lit8 v11, v8, 0x25

    if-nez v0, :cond_0

    move v11, v13

    :goto_0
    add-int/lit16 v8, v11, 0x275

    .line 251
    mul-int/lit8 v11, v8, 0x25

    if-nez v1, :cond_1

    move v12, v13

    :goto_1
    add-int v8, v11, v12

    .line 252
    mul-int/lit8 v11, v8, 0x25

    if-nez v2, :cond_2

    move v12, v13

    :goto_2
    add-int v8, v11, v12

    .line 253
    mul-int/lit8 v11, v8, 0x25

    if-nez v9, :cond_3

    move v12, v13

    :goto_3
    add-int v8, v11, v12

    .line 254
    mul-int/lit8 v11, v8, 0x25

    if-nez v6, :cond_4

    move v12, v13

    :goto_4
    add-int v8, v11, v12

    .line 255
    mul-int/lit8 v11, v8, 0x25

    if-nez v3, :cond_5

    move v12, v13

    :goto_5
    add-int v8, v11, v12

    .line 256
    mul-int/lit8 v11, v8, 0x25

    if-nez v4, :cond_6

    move v12, v13

    :goto_6
    add-int v8, v11, v12

    .line 257
    mul-int/lit8 v11, v8, 0x25

    if-nez v10, :cond_7

    move v12, v13

    :goto_7
    add-int v8, v11, v12

    .line 258
    mul-int/lit8 v11, v8, 0x25

    if-nez v5, :cond_8

    move v12, v13

    :goto_8
    add-int v8, v11, v12

    .line 259
    return v8

    .line 250
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v11

    goto :goto_0

    .line 251
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v12

    goto :goto_1

    .line 252
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v12

    goto :goto_2

    .line 253
    :cond_3
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v12

    goto :goto_3

    .line 254
    :cond_4
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v12

    goto :goto_4

    .line 255
    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v12

    goto :goto_5

    .line 256
    :cond_6
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v12

    goto :goto_6

    .line 257
    :cond_7
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v12

    goto :goto_7

    .line 258
    :cond_8
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v12

    goto :goto_8
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Address1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vending/model/Address;->getAddress1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Address2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vending/model/Address;->getAddress2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", City="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vending/model/Address;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", State="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vending/model/Address;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", PostalCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vending/model/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Country="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vending/model/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vending/model/Address;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vending/model/Address;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Phone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vending/model/Address;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
