.class public Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature;
.super Landroid/widget/TextView;
.source "CPUTemperature.java"


# static fields
.field private static final UPDATE_INTENT:Ljava/lang/String; = "update_alarm"

.field private static files:[Ljava/lang/String;


# instance fields
.field private file:Ljava/io/File;

.field private isCelcius:Z

.field private mContext:Landroid/content/Context;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private pendingIntent:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/sys/device/platform/omap/omap_temp_sensor.0/temperature"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/sys/kernel/debug/tegra_thermal/temp_tj"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "/sys/devices/system/cpu/cpu0/cpufreq/cpu_temp"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "/sys/class/thermal/thermal_zone-/temp"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "/sys/class/thermal/thermal_zone1/temp"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "/sys/devices/platform/s5p-tmu/curr_temp"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "/sys/devices/virtual/thermal/thermal_zone0/temp"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "/sys/device/virtual/thermal/thermal_zone1/temp"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "/sys/devides/system/cpu/cpufreq/cput_attributes/cur_temp"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "/sys/devices/platform/s5p-tmu/temperature"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature;->files:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature;->file:Ljava/io/File;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature;->isCelcius:Z

    iput-object v1, p0, Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature;->pendingIntent:Landroid/app/PendingIntent;

    new-instance v0, Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature$2;-><init>(Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature;)V

    iput-object v0, p0, Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature$1;-><init>(Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature;->getFile()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature;->isCelcius:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature;->isCelcius:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature;->updateTemperature()V

    return-void
.end method

.method private cancelAlarm()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature;->pendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v1, p0, Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    :cond_0
    return-void
.end method

.method private getFile()V
    .locals 1

    const-string v0, "default"

    invoke-direct {p0, v0}, Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature;->getTempFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature;->file:Ljava/io/File;

    return-void
.end method

.method private getTempFile(Ljava/lang/String;)Ljava/io/File;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    if-eqz v0, :cond_2

    const-string v2, "default"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    sget-object v3, Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature;->files:[Ljava/lang/String;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_4

    aget-object v1, v3, v2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    const/4 v0, 0x0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0
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

    invoke-virtual {p0, v4}, Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setAlarm(I)V
    .locals 8

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v7, Landroid/content/Intent;

    const-string v1, "update_alarm"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature;->mContext:Landroid/content/Context;

    invoke-static {v1, v3, v7, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature;->pendingIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v4, p1

    iget-object v6, p0, Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private updateTemperature()V
    .locals 10

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v7, p0, Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature;->file:Ljava/io/File;

    invoke-direct {v2, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x400

    new-array v0, v7, [B

    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "[^0-9.] + "

    const-string v9, " "

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-boolean v7, p0, Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature;->isCelcius:Z

    if-eqz v7, :cond_1

    const-string v6, "C"

    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    float-to-int v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\u00b0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    const-string v6, "F"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/high16 v7, 0x41100000    # 9.0f

    mul-float/2addr v7, v3

    const/high16 v8, 0x40a00000    # 5.0f

    div-float/2addr v7, v8

    const/high16 v8, 0x42000000    # 32.0f

    add-float v3, v7, v8

    goto :goto_2
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

    iget-object v1, p0, Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/16 v1, 0x3e8

    invoke-direct {p0, v1}, Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature;->setAlarm(I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-direct {p0}, Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature;->cancelAlarm()V

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    return-void
.end method
