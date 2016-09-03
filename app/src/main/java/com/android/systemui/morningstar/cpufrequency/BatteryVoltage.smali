.class public Lcom/android/systemui/morningstar/cpufrequency/BatteryVoltage;
.super Landroid/widget/TextView;
.source "BatteryVoltage.java"


# static fields
.field private static final UPDATE_INTENT:Ljava/lang/String; = "update_alarm"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private pendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/morningstar/cpufrequency/BatteryVoltage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/morningstar/cpufrequency/BatteryVoltage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/morningstar/cpufrequency/BatteryVoltage;->pendingIntent:Landroid/app/PendingIntent;

    new-instance v0, Lcom/android/systemui/morningstar/cpufrequency/BatteryVoltage$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/morningstar/cpufrequency/BatteryVoltage$1;-><init>(Lcom/android/systemui/morningstar/cpufrequency/BatteryVoltage;)V

    iput-object v0, p0, Lcom/android/systemui/morningstar/cpufrequency/BatteryVoltage;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/systemui/morningstar/cpufrequency/BatteryVoltage;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/systemui/morningstar/cpufrequency/BatteryVoltage;->voltage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/morningstar/cpufrequency/BatteryVoltage;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/morningstar/cpufrequency/BatteryVoltage;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/morningstar/cpufrequency/BatteryVoltage;->updateVoltage()V

    return-void
.end method

.method private cancelAlarm()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/morningstar/cpufrequency/BatteryVoltage;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/systemui/morningstar/cpufrequency/BatteryVoltage;->pendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/morningstar/cpufrequency/BatteryVoltage;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v1, p0, Lcom/android/systemui/morningstar/cpufrequency/BatteryVoltage;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    :cond_0
    return-void
.end method

.method private initValues()V
    .locals 5

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0xc8

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_0

    move v1, v0

    :goto_0
    return-void

    :cond_0
    const-string v4, "loading"

    invoke-virtual {p0, v4}, Lcom/android/systemui/morningstar/cpufrequency/BatteryVoltage;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setAlarm(I)V
    .locals 8

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/morningstar/cpufrequency/BatteryVoltage;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v7, Landroid/content/Intent;

    const-string v1, "update_alarm"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/morningstar/cpufrequency/BatteryVoltage;->mContext:Landroid/content/Context;

    invoke-static {v1, v3, v7, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/morningstar/cpufrequency/BatteryVoltage;->pendingIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v4, p1

    iget-object v6, p0, Lcom/android/systemui/morningstar/cpufrequency/BatteryVoltage;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private updateVoltage()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/morningstar/cpufrequency/BatteryVoltage;->voltage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/morningstar/cpufrequency/BatteryVoltage;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private voltage()Ljava/lang/String;
    .locals 7

    iget-object v3, p0, Lcom/android/systemui/morningstar/cpufrequency/BatteryVoltage;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    const-string v3, "voltage"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    int-to-float v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mV"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "update_alarm"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/morningstar/cpufrequency/BatteryVoltage;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/morningstar/cpufrequency/BatteryVoltage;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/16 v1, 0x3e8

    invoke-direct {p0, v1}, Lcom/android/systemui/morningstar/cpufrequency/BatteryVoltage;->setAlarm(I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/morningstar/cpufrequency/BatteryVoltage;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/morningstar/cpufrequency/BatteryVoltage;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-direct {p0}, Lcom/android/systemui/morningstar/cpufrequency/BatteryVoltage;->cancelAlarm()V

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    return-void
.end method
